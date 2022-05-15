import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/settings.dart';

class SettingsStateProvider extends StateNotifier<Settings> {
  SettingsStateProvider(Settings state) : super(state);

  void onUpdateUsername(String? username) {
    state = state.copyWith(username: username);
  }

  void onUpdatePassword(String? password) {
    state = state.copyWith(password: password);
  }
}

final settingsProvider = StateNotifierProvider<SettingsStateProvider, Settings>(
  (ref) => SettingsStateProvider(const Settings()),
);
