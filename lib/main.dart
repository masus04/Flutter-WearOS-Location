import "package:flutter/material.dart";
import 'package:flutter_wearos_location/flutterlocation_widget.dart';
import "package:flutter_wearos_location/geolocator_widget.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: "Flutter Demo",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FlutterWearOSLocation(),
      ),
    );
  }
}

class FlutterWearOSLocation extends StatelessWidget {
  const FlutterWearOSLocation({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Card(
          elevation: 4,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                GeolocatorWidget(),
                Divider(thickness: 2),
                FlutterLocationWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
