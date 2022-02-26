import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rta_flutter/models/concurrent_process_state.dart';

final concurrentProcessProvider = StateNotifierProvider<ProcessStateProvider, ConcurrentProcessState>((ref) {
  return ProcessStateProvider(
    ConcurrentProcessState(
      max: Platform.numberOfProcessors,
    ),
  );
});

class ProcessStateProvider extends StateNotifier<ConcurrentProcessState> {
  ProcessStateProvider(ConcurrentProcessState state) : super(state);

  void updateCurrent(int value) {
    state = state.copyWith(current: value);
  }
}
