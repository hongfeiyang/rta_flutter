import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_watcher_user_config.freezed.dart';

@freezed
class BookingWatcherUserConfig with _$BookingWatcherUserConfig {
  const BookingWatcherUserConfig._();

  const factory BookingWatcherUserConfig({
    required String recipientEmail,
    required DateTime startPreferredDate,
    required DateTime endPreferredDate,
    required TimeOfDay startPreferredTime,
    required TimeOfDay endPreferredTime,
    @Default([]) List<String> preferredLocationIds,
  }) = _BookingWatcherUserConfig;
}
