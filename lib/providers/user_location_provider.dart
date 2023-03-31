import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import 'package:rta_flutter/models/location_coordinates.dart';
import 'package:rta_flutter/providers/location_availability_provider.dart';

import '../utils.dart';

final userLocationProvider = StateNotifierProvider<UserLocationStateNotifier,
    AsyncValue<LocationCoordinates?>>(
  (ref) {
    return UserLocationStateNotifier(const AsyncData(null), ref.read);
  },
);

class UserLocationStateNotifier
    extends StateNotifier<AsyncValue<LocationCoordinates?>> {
  UserLocationStateNotifier(AsyncValue<LocationCoordinates?> state, this.read)
      : super(state);

  final Reader read;

  void updateLocation() async {
    final location = Location();

    var serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        state =
            const AsyncError('Location Service not enabled', StackTrace.empty);
      }
    }

    var permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        state = const AsyncError(
            'Location Service access denied', StackTrace.empty);
      }
    }

    LocationData locationData = await location.getLocation();

    if (locationData.latitude == null || locationData.longitude == null) {
      state = const AsyncData(null);
    }
    final userLocation = LocationCoordinates(
        latitude: locationData.latitude!, longitude: locationData.longitude!);
    state = AsyncData(userLocation);
    read(allLocationsAvailabilityProvider.notifier)
        .updateDistance(userLocation);
  }
}
