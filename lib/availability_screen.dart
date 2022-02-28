import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:rta_flutter/models/location_state.dart';
import 'package:rta_flutter/providers/timer_provider.dart';
import 'package:tuple/tuple.dart';

import 'providers/availability_screen_providers.dart';
import 'providers/location_availability_provider.dart';
import 'providers/test_center_provider.dart';
import 'providers/user_location_provider.dart';

const int col1Flex = 1;
const int col2Flex = 2;
const int col3Flex = 2;
const int col4Flex = 1;
const int col5Flex = 1;
const int col6Flex = 1;

class AvailabilityScreen extends ConsumerStatefulWidget {
  const AvailabilityScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends ConsumerState<AvailabilityScreen> {
  final _textEditingController = TextEditingController();

  @override
  void initState() {
    _textEditingController.addListener(
      () {
        _onTextEntered(_textEditingController.text);
      },
    );
    super.initState();
  }

  void _onTextEntered(String text) {
    ref.read(locationFilter.notifier).state = text;
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer(
            builder: (context, ref, child) {
              final testCenterLocationsAsyncValue =
                  ref.watch(testCenterLocationsProvider);
              return testCenterLocationsAsyncValue.when(
                data: (testCenterLocations) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: _textEditingController,
                        decoration: const InputDecoration(
                          hintText: 'Search location',
                          constraints: BoxConstraints(
                              maxHeight: 40, minHeight: 40, maxWidth: 120),
                        ),
                      ),
                      Row(
                        children: [
                          ref.watch(isUpdatingProvier)
                              ? TextButton(
                                  onPressed: () {
                                    ref
                                        .read(allLocationsAvailabilityProvider
                                            .notifier)
                                        .killAllRunningProcess();
                                  },
                                  child: const Text('Stop'),
                                )
                              : TextButton(
                                  onPressed: () {
                                    ref
                                        .read(allLocationsAvailabilityProvider
                                            .notifier)
                                        .updateSelectedAvailability();
                                  },
                                  child: const Text(
                                      'Update Selected Locations Now'),
                                ),
                          const Text('Show Available Only'),
                          Consumer(
                            builder: (context, ref, child) {
                              final showAvailableOnly =
                                  ref.watch(showAvailableOnlyFilter);
                              return Switch(
                                value: showAvailableOnly,
                                onChanged: (newValue) {
                                  ref
                                      .read(showAvailableOnlyFilter.notifier)
                                      .state = newValue;
                                },
                              );
                            },
                          ),
                          const Text('Sort By Distance'),
                          Consumer(
                            builder: (context, ref, child) {
                              return Switch(
                                value: ref.watch(sortByDistanceFilter),
                                onChanged: (value) {
                                  ref
                                      .read(sortByDistanceFilter.notifier)
                                      .state = value;
                                },
                              );
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('Current Location: '),
                              Consumer(
                                builder: (context, ref, child) {
                                  final p = ref.watch(userLocationProvider);
                                  return p.when(
                                    data: (data) {
                                      return Text(
                                          'Lat: ${data?.latitude.toStringAsFixed(4)}  Lon: ${data?.longitude.toStringAsFixed(4)}');
                                    },
                                    error: (e, stacktrack) {
                                      return Text('Error: $e');
                                    },
                                    loading: () {
                                      return const LinearProgressIndicator();
                                    },
                                  );
                                },
                              ),
                              const SizedBox(width: 8),
                              Consumer(builder: (context, ref, child) {
                                return TextButton(
                                  child: const Text('Get Current Location'),
                                  onPressed: () async {
                                    ref
                                        .read(userLocationProvider.notifier)
                                        .updateLocation();
                                  },
                                );
                              }),
                            ],
                          ),
                          Consumer(
                            builder: (context, ref, child) {
                              final enabled = ref.watch(autoUpdateProvider
                                  .select((value) => value.enabled));
                              final time = ref.watch(autoUpdateProvider
                                  .select((value) => value.timeTillNextUpdate));

                              String displayText;

                              if (time == null || !enabled) {
                                displayText = 'Auto Update Disabled';
                              } else {
                                final duration = Duration(seconds: time);
                                final formattedDuration =
                                    "${duration.inHours.toString().padLeft(2, '0')}:${duration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${(duration.inSeconds.remainder(60).toString().padLeft(2, '0'))}";
                                displayText =
                                    'Next Auto Update: $formattedDuration';
                              }
                              return Text(displayText);
                            },
                          ),
                        ],
                      ),
                      const _ListRow(
                        children: [
                          Tuple2(col1Flex, Text('Location')),
                          Tuple2(col2Flex, Text('Last Updated')),
                          Tuple2(col3Flex, Text('Next Available')),
                          Tuple2(col4Flex, Text('Number Available')),
                          Tuple2(col5Flex, Text('Distance')),
                          Tuple2(col6Flex, Text('Process ID')),
                        ],
                      ),
                      const Divider(height: 1),
                      Expanded(
                        child: Consumer(builder: (context, ref, child) {
                          final locations =
                              ref.watch(filteredLocationsProvider);
                          return ListView.separated(
                            separatorBuilder: (context, index) =>
                                const Divider(height: 1),
                            itemBuilder: (context, index) {
                              return ProviderScope(
                                overrides: [
                                  _currLocationRow
                                      .overrideWithValue(locations[index])
                                ],
                                child: const _LocationListRow(
                                  col1Flex: col1Flex,
                                  col2Flex: col2Flex,
                                  col3Flex: col3Flex,
                                  col4Flex: col4Flex,
                                  col5Flex: col5Flex,
                                  col6Flex: col6Flex,
                                ),
                              );
                            },
                            itemCount: locations.length,
                          );
                        }),
                      ),
                    ],
                  );
                },
                error: (err, stackTrace) {
                  return Text('error: $stackTrace');
                },
                loading: () {
                  return const LinearProgressIndicator();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ListRow extends StatelessWidget {
  const _ListRow({
    Key? key,
    this.children = const [],
  }) : super(key: key);

  final List<Tuple2<int, Widget>> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...children.asMap().entries.map(
          (e) {
            return Expanded(
              flex: e.value.item1,
              child: e.value.item2,
            );
          },
        ).toList(),
      ],
    );
  }
}

final _currLocationRow = Provider<LocationState>(
  (ref) => throw UnimplementedError(),
);

class _LocationListRow extends ConsumerWidget {
  const _LocationListRow({
    Key? key,
    this.col1Flex = 1,
    this.col2Flex = 1,
    this.col3Flex = 1,
    this.col4Flex = 1,
    this.col5Flex = 1,
    this.col6Flex = 1,
  }) : super(key: key);

  final int col1Flex;
  final int col2Flex;
  final int col3Flex;
  final int col4Flex;
  final int col5Flex;
  final int col6Flex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rowData = ref.watch(_currLocationRow);
    final dateFormatter = DateFormat('E HH:mm:ss MM/dd/yyyy');

    return _ListRow(
      children: [
        Tuple2(
          col1Flex,
          Align(
            alignment: Alignment.centerLeft,
            child: Consumer(
              builder: (context, ref, child) {
                return Row(
                  children: [
                    Checkbox(
                        value: rowData.selected,
                        onChanged: (value) {
                          ref
                              .read(allLocationsAvailabilityProvider.notifier)
                              .updateLocationSelection(
                                  rowData.locationInfo.location,
                                  value == true ? true : false);
                        }),
                    Flexible(child: Text(rowData.name)),
                  ],
                );
              },
            ),
          ),
        ),
        Tuple2(
          col2Flex,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              rowData.lastUpdated != null
                  ? dateFormatter.format(rowData.lastUpdated!)
                  : 'N/A',
            ),
          ),
        ),
        Tuple2(
          col3Flex,
          Align(
            alignment: Alignment.centerLeft,
            child: Builder(
              builder: (context) {
                Widget statusWidget;

                switch (rowData.status) {
                  case LocationInfoFetchingStatus.loading:
                    statusWidget = const LinearProgressIndicator();
                    break;
                  case LocationInfoFetchingStatus.completed:
                    final availDate = rowData.locationInfo.result?.ajaxresult
                        .slots?.nextAvailableDate;

                    if (availDate == null) {
                      statusWidget = Text('$availDate');
                      break;
                    }

                    final formattedTime = dateFormatter.format(availDate);
                    statusWidget = Text(formattedTime);

                    break;
                  case LocationInfoFetchingStatus.error:
                    statusWidget = const Icon(Icons.error);
                    break;
                }
                return statusWidget;
              },
            ),
          ),
        ),
        Tuple2(
          col4Flex,
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              child: Text('${rowData.numberOfVacancies}'),
              onPressed: () {
                context.push('/details/${rowData.locationInfo.location}');
              },
            ),
          ),
        ),
        Tuple2(
          col5Flex,
          Align(
            alignment: Alignment.centerLeft,
            child: Builder(
              builder: (context) {
                final dist = rowData.distanceToCurrentLocation;
                String text;
                if (dist != null) {
                  text = '${(dist / 1000).toStringAsFixed(2)} km';
                } else {
                  text = 'N/A';
                }
                return Text(text);
              },
            ),
          ),
        ),
        Tuple2(
          col6Flex,
          Builder(
            builder: (context) {
              final pid = rowData.pid;
              return Row(
                children: [
                  Text('$pid'),
                  if (pid != null)
                    TextButton(
                      onPressed: () {
                        Process.killPid(pid);
                      },
                      child: const Text('Kill'),
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
