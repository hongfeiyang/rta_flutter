import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/location_info.dart';
import '../models/location_state.dart';
import '../models/test_center.dart';

final testCenterLocationsProvider = FutureProvider<List<LocationState>>(
  (ref) async {
    final jsonString = await rootBundle.loadString('assets/centers.json');
    final jsonObject = await json.decode(jsonString) as List;
    final centers = jsonObject.map((x) => TestCenter.fromJson(x)).toList();
    final locationStates = <LocationState>[];
    for (final center in centers) {
      LocationInfo locationInfo = LocationInfo(location: center.id.toString());
      DateTime? lastUpdated;
      try {
        final file = File('./availabilities/${center.id}.json');
        final jsonString = await file.readAsString();
        final jsonObj = json.decode(jsonString);
        locationInfo = LocationInfo.fromJson(jsonObj);
        lastUpdated = await file.lastModified();
      } catch (e) {
        locationInfo = LocationInfo(location: center.id.toString());
      } finally {
        final testCenter = centers.firstWhere((x) {
          return x.id.toString() == locationInfo.location;
        });
        locationStates.add(
          LocationState(
            testCenter: testCenter,
            locationInfo: locationInfo,
            name: testCenter.name,
            lastUpdated: lastUpdated,
          ),
        );
      }
    }
    return locationStates;
  },
);
