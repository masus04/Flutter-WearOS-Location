// import "package:flutter/widgets.dart";
// import "package:hooks_riverpod/hooks_riverpod.dart";
// import "package:location/location.dart";
//
// Location location = Location();
//
// final locationProvider = StreamProvider<LocationData>((ref) async* {
//   debugPrint("Initializing Location Package");
//
//   if (!(await location.serviceEnabled())) {
//     await location.requestService();
//     if (!(await location.serviceEnabled())) {
//       throw Exception("Location Service disabled");
//     }
//   }
//
//   if (await location.hasPermission() == PermissionStatus.denied) {
//     await location.requestPermission();
//     if (await location.hasPermission() != PermissionStatus.granted) {
//       throw Exception("Location permissions denied");
//     }
//   }
//
//   await for (final position in location.onLocationChanged.asBroadcastStream()) {
//     debugPrint("Current Speed: ${position.speed} m/s");
//     yield position;
//   }
// });
