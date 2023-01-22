import "package:flutter/material.dart";

class GeolocatorWidget extends StatelessWidget {
  const GeolocatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const double kmh = 5;
    const double heading = 180;

    return TextButton(
      onPressed: () {},
      child: const Text("Speed: $kmh km/h \nHeading: $heading °"),
    );
  }
}
