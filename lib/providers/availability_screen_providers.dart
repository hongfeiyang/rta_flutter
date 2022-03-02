import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rta_flutter/models/location_state.dart';

import 'location_availability_provider.dart';

final locationFilter = StateProvider<String?>(
  (ref) {
    return null;
  },
);

final showAvailableOnlyFilter = StateProvider<bool>(
  (ref) => false,
);

final sortByDistanceFilter = StateProvider<bool>(
  (ref) => false,
);

final isUpdatingProvier = Provider<bool>(
  (ref) {
    return ref
        .watch(allLocationsAvailabilityProvider)
        .any((e) => e.pid != null);
  },
);

final showSelectedOnlyFilter = StateProvider<bool>(
  (ref) => false,
);

final filteredLocationsProvider = Provider(
  (ref) {
    final locationKeyword = ref.watch(locationFilter);
    final locations = ref.watch(allLocationsAvailabilityProvider);
    final showAvailableOnly = ref.watch(showAvailableOnlyFilter);
    final sortByDistance = ref.watch(sortByDistanceFilter);
    final showSelectedOnly = ref.watch(showSelectedOnlyFilter);

    var result = locations;
    if (locationKeyword != null) {
      result = result.where((x) {
        return x.name.toLowerCase().contains(locationKeyword.toLowerCase());
      }).toList();
    }

    if (showAvailableOnly) {
      result = result.where((x) {
        return x.locationInfo.result?.ajaxresult.slots?.nextAvailableDate !=
            null;
      }).toList();
    }

    if (showSelectedOnly) {
      result = result.where((x) {
        return x.selected == true;
      }).toList();
    }

    final List<LocationState> sortedResult;
    if (sortByDistance) {
      sortedResult = result.toList()
        ..sort(
          (a, b) {
            return ((a.distanceToCurrentLocation ?? 0) -
                    (b.distanceToCurrentLocation ?? 0))
                .toInt();
          },
        );
    } else {
      sortedResult = result.toList()
        ..sort(
          (a, b) {
            return a.testCenter.name.compareTo(b.testCenter.name);
          },
        );
    }

    /// Need to do this explict assignment to trigger state change to update UI
    result = sortedResult;

    return result;
  },
);
