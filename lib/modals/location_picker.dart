import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/providers.dart';

class LocationPickerDialog extends ConsumerStatefulWidget {
  const LocationPickerDialog({
    Key? key,
    this.locationIds,
  }) : super(key: key);

  final List<String>? locationIds;

  static Future<List<String>?> show(
      BuildContext context, List<String> locationIds) {
    return showDialog<List<String>?>(
      context: context,
      builder: (context) {
        return LocationPickerDialog(
          locationIds: locationIds,
        );
      },
    );
  }

  @override
  ConsumerState<LocationPickerDialog> createState() =>
      _LocationPickerDialogState();
}

class _LocationPickerDialogState extends ConsumerState<LocationPickerDialog> {
  late final Set<String> _selectedLocationIds;

  bool _isSelected(String id) {
    return _selectedLocationIds.contains(id);
  }

  @override
  void initState() {
    _selectedLocationIds = Set.from(widget.locationIds ?? []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final items = ref.watch(testCenterLocationsProvider);

    return Dialog(
      child: Center(
        child: items.when(
          data: (data) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pop(_selectedLocationIds.toList());
                      },
                      child: const Text('Save'),
                    )
                  ],
                ),
                const Divider(height: 3),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Checkbox(
                            value:
                                _isSelected(data[index].locationInfo.location),
                            onChanged: (value) {
                              if (value == true) {
                                _selectedLocationIds
                                    .add(data[index].locationInfo.location);
                              } else {
                                _selectedLocationIds
                                    .remove(data[index].locationInfo.location);
                              }
                              setState(() {});
                            },
                          ),
                          Flexible(
                            child: Text(data[index].testCenter.name),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
          error: (e, stacktrace) => const Icon(Icons.error),
          loading: () => const LinearProgressIndicator(),
        ),
      ),
    );
  }
}
