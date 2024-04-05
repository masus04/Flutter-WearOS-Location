import "package:flutter/material.dart";
import "package:flutter_wearos_location/views/geolocator_widget.dart";
import "package:flutter_wearos_location/views/jni_location_widget.dart";
// import "package:flutter_wearos_location/views/location_widget.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

enum Route {
  mainMenu,
  geoLocator,
  location,
  jniLocation;

  String get route => "/$this";
}

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
        title: "WearOS Location Demo",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
        ),
        initialRoute: Route.mainMenu.route,
        routes: {
          Route.mainMenu.route: (BuildContext context) => const MainMenu(),
          Route.geoLocator.route: (BuildContext context) => const GeolocatorWidget(),
          // Route.location.route: (BuildContext context) => const LocationWidget(),
          Route.jniLocation.route: (BuildContext context) => const JNILocationWidget(),
        },
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PackageButton(
            text: "Geolocator",
            route: Route.geoLocator,
          ),
          PackageButton(
            text: "Location",
            route: Route.location,
          ),
          PackageButton(
            text: "JNI Location",
            route: Route.jniLocation,
          ),
        ],
      ),
    );
  }
}

class PackageButton extends StatelessWidget {
  final String text;
  final Route route;

  const PackageButton({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(route.route);
      },
      child: Text(text),
    );
  }
}

class FlutterWearOSLocation extends StatelessWidget {
  const FlutterWearOSLocation({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white,
      child: Center(
        child: Card(
          elevation: 4,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: GeolocatorWidget(),
          ),
        ),
      ),
    );
  }
}
