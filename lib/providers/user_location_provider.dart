import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import 'package:rta_flutter/models/location_coordinates.dart';
import 'package:rta_flutter/providers/location_availability_provider.dart';

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

    var _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        state = const AsyncError('Location Service not enabled');
      }
    }

    var _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        state = const AsyncError('Location Service access denied');
      }
    }

    LocationData _locationData = await location.getLocation();

    if (_locationData.latitude == null || _locationData.longitude == null) {
      state = const AsyncData(null);
    }
    final userLocation = LocationCoordinates(
        latitude: _locationData.latitude!, longitude: _locationData.longitude!);
    state = AsyncData(userLocation);
    read(allLocationsAvailabilityProvider.notifier)
        .updateDistance(userLocation);
  }
}
