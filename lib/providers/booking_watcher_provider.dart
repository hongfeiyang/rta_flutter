import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rta_flutter/models/booking_watcher_user_config.dart';
import 'package:rta_flutter/models/location_state.dart';
import 'package:rta_flutter/providers/notification_service_provider.dart';
import 'package:rta_flutter/utils.dart';

class BookingWatcher extends StateNotifier<List<BookingWatcherUserConfig>> {
  BookingWatcher(List<BookingWatcherUserConfig> state, this.read)
      : super(state);

  Reader read;

  List<LocationState>? prevLocationStates;

  void addConfig(BookingWatcherUserConfig config) {
    state = [...state, config];
  }

  void updateConfig(
      BookingWatcherUserConfig config, BookingWatcherUserConfig newConfig) {
    state = [
      for (final s in state)
        if (s == config) newConfig else s
    ];
  }

  void removeConfig(String userEmail) {
    state =
        state.where((element) => element.recipientEmail != userEmail).toList();
  }

  void onLocationDataChanged(List<LocationState> locationStates) {
    for (final l in locationStates) {
      for (final config in state) {
        if (config.preferredLocationIds.contains(l.locationInfo.location)) {
          final qualifiedSlots =
              l.locationInfo.result?.ajaxresult.slots?.listTimeSlot.where(
            (x) {
              if (x.startTime == null || x.availability == false) {
                return false;
              }
              final date = DateTime(
                x.startTime!.year,
                x.startTime!.month,
                x.startTime!.day,
              );

              final time = TimeOfDay(
                hour: x.startTime!.hour,
                minute: x.startTime!.minute,
              );

              if (date.isAfter(config.endPreferredDate) ||
                  date.isBefore(config.startPreferredDate)) {
                return false;
              }

              if (time.toDouble < config.startPreferredTime.toDouble ||
                  time.toDouble > config.endPreferredTime.toDouble) {
                return false;
              }

              return true;
            },
          ).toList();

          if (qualifiedSlots != null && qualifiedSlots.isNotEmpty) {
            final message = '${qualifiedSlots.length} slots found';
            read(notificationServiceProvider).showNotificationCustomSound(
              l.testCenter.name,
              message,
            );
          }
        }
      }
    }
  }
}

final bookingWatcherProvider =
    StateNotifierProvider<BookingWatcher, List<BookingWatcherUserConfig>>(
  (ref) {
    return BookingWatcher([], ref.read);
  },
);
