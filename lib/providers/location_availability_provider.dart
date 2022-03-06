import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pool/pool.dart';
import 'package:rta_flutter/providers/booking_watcher_provider.dart';

import '../models/models.dart';
import 'process_provider.dart';
import 'test_center_provider.dart';

final allLocationsAvailabilityProvider =
    StateNotifierProvider<LocationAvailabilityNotifier, List<LocationState>>(
  (ref) {
    final numProc = ref.watch(concurrentProcessProvider).current;
    final locations = ref.watch(testCenterLocationsProvider).value ?? [];
    return LocationAvailabilityNotifier(
      locations,
      ref.read,
      pool: Pool(numProc),
    );
  },
);

class LocationAvailabilityNotifier extends StateNotifier<List<LocationState>> {
  LocationAvailabilityNotifier(
    List<LocationState> state,
    this.read, {
    this.userLocation,
    required this.pool,
  }) : super(state);

  @override
  void dispose() {
    pool.close();
    killAllRunningProcess();
    super.dispose();
  }

  final LocationCoordinates? userLocation;
  final Pool pool;
  final Reader read;

  final String _pythonExePath = 'assets/scrape_availability.py';
  int _remainingTasksCount = 0;
  bool _finishedAddingTask = false;
  Function? _onUpdateCompleted;

  void updateDistance(LocationCoordinates userLocation) {
    state = [
      for (final loc in state)
        loc.copyWith(
            distanceToCurrentLocation:
                userLocation.distanceTo(loc.testCenter.coordinate))
    ];
  }

  void updateLocationSelection(String id, bool value) {
    state = [
      for (final loc in state)
        if (loc.locationInfo.location == id)
          loc.copyWith(
            selected: value,
          )
        else
          loc,
    ];
  }

  void killAllRunningProcess() {
    for (final l in state) {
      if (l.pid != null) {
        Process.killPid(l.pid!);
      }
    }
  }

  void updateSelectedAvailability({Function? onUpdateCompleted}) {
    _onUpdateCompleted = onUpdateCompleted;

    _finishedAddingTask = false;
    _remainingTasksCount = 0;

    for (var e in state) {
      if (e.selected) {
        pool.request().then((resource) {
          updateOneAvailability(e.locationInfo.location, resource: resource)
              .then((_) {
            _remainingTasksCount--;
            if (_finishedAddingTask && _remainingTasksCount == 0) {
              _onUpdateCompleted?.call();
              read(bookingWatcherProvider.notifier)
                  .onLocationDataChanged(state);
            }
          });
        });

        _remainingTasksCount++;
      }
    }
    _finishedAddingTask = true;

    if (_finishedAddingTask && _remainingTasksCount == 0) {
      /// if we reach here, it means no location was selected
      /// treat this as skipped, timer will restart
      _onUpdateCompleted?.call();
    }
  }

  Future<void> updateOneAvailability(String id, {PoolResource? resource}) {
    final Completer completer = Completer();

    Process.start('python3', [_pythonExePath, id, 'availabilities/$id.json'])
        .then(
      (proc) {
        print('Process Started: $id');
        proc.exitCode.then((value) => print('Process exited, code: $value'));
        state = [
          for (final loc in state)
            if (loc.locationInfo.location == id)
              loc.copyWith(
                status: LocationInfoFetchingStatus.loading,
                pid: proc.pid,
              )
            else
              loc,
        ];

        proc.stderr.listen(
          (event) {
            final r = utf8.decode(event);
            print('stderr: $r');
            state = [
              for (final loc in state)
                if (loc.locationInfo.location == id)
                  loc.copyWith(
                    status: LocationInfoFetchingStatus.error,
                  )
                else
                  loc,
            ];
          },
          onDone: () async {
            try {
              final file = File('./availabilities/$id.json');
              final jsonString = await file.readAsString();
              final lastUpdated = await file.lastModified();
              final jsonObj = json.decode(jsonString);
              final locationInfo = LocationInfo.fromJson(jsonObj);
              state = [
                for (final loc in state)
                  if (loc.locationInfo.location == id)
                    loc.copyWith(
                      lastUpdated: lastUpdated,
                      locationInfo: locationInfo,
                      status: LocationInfoFetchingStatus.completed,
                      pid: null,
                    )
                  else
                    loc,
              ];
            } catch (e) {
              state = [
                for (final loc in state)
                  if (loc.locationInfo.location == id)
                    loc.copyWith(
                      status: LocationInfoFetchingStatus.error,
                      pid: null,
                    )
                  else
                    loc,
              ];
            } finally {
              resource?.release();
              completer.complete();
            }
          },
          onError: (Object error) {
            // print('stderr: Error');
            completer.completeError(error);
          },
        );
      },
    );

    return completer.future;
  }
}

enum LocationInfoFetchingStatus { loading, completed, error }
