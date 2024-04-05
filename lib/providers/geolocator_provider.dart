import "package:flutter/widgets.dart";
import "package:geolocator/geolocator.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

final geolocatorProvider = StreamProvider<Position>((ref) async* {
  debugPrint("Initializing GeoLocator");

  var permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception("Location permissions are denied");
    }
  }

  await for (final position in Geolocator.getPositionStream().asBroadcastStream()) {
    debugPrint("Current Speed: ${position.speed} m/s");
    yield position;
  }
});
