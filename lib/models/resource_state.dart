import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_state.freezed.dart';

@freezed
class ResourceState with _$ResourceState {
  const factory ResourceState({
    required String scriptFilePath,
    required String settingsFilePath,
    required String applicationSupportDirectoryPath,
  }) = _ResourceState;
}
