import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rta_flutter/providers/location_availability_provider.dart';

import '../models/auto_update_timer_state.dart';

final autoUpdateProvider =
    StateNotifierProvider<AutoUpdateTimerNotifier, AutoUpdateTimerState>(
  (ref) {
    return AutoUpdateTimerNotifier(
      const AutoUpdateTimerState(interval: 15 * 60),
      ref.read,
    );
  },
);

class AutoUpdateTimerNotifier extends StateNotifier<AutoUpdateTimerState> {
  AutoUpdateTimerNotifier(AutoUpdateTimerState state, this.read) : super(state);

  RestartableTimer? _autoUpdateTimer;
  Timer? _countdownTimer;
  final Reader read;

  void updateAutoUpdateInterval(int newValue) {
    state = state.copyWith(interval: newValue * 60);

    startTimerIfNeeded();
  }

  void toggleAutoUpdate() {
    state = state.copyWith(enabled: !state.enabled);

    startTimerIfNeeded();
  }

  void startTimerIfNeeded() {
    _autoUpdateTimer?.cancel();
    _countdownTimer?.cancel();
    if (state.enabled) {
      state = state.copyWith(timeTillNextUpdate: state.interval);
      _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        state =
            state.copyWith(timeTillNextUpdate: state.timeTillNextUpdate! - 1);
      });
      _autoUpdateTimer = RestartableTimer(
        Duration(seconds: state.interval),
        () {
          _countdownTimer?.cancel();
          read(allLocationsAvailabilityProvider.notifier)
              .updateSelectedAvailability(
            onUpdateCompleted: () {
              startTimerIfNeeded();
            },
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _autoUpdateTimer?.cancel();
    _countdownTimer?.cancel();
    super.dispose();
  }
}
