import "package:flutter/widgets.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:location/location.dart";

final flutterLocationProvider = StreamProvider<LocationData>((ref) async* {
  debugPrint("Initializing GeoLocator");

  // Initialization
  var location = Location();

  // Check Service
  if (!await location.serviceEnabled()) {
    if (!await location.requestService()) {
      throw Exception("Device Location service disabled");
    }
  }

  // Check Permissions
  if (await location.hasPermission() == PermissionStatus.denied) {
    if (await location.requestPermission() != PermissionStatus.granted) {
      throw Exception("Device Location permission declined");
    }
  }

  // Stream position
  await for (final position in location.onLocationChanged.asBroadcastStream()) {
    debugPrint("Current Speed: ${position.speed} m/s");
    yield position;
  }
});
