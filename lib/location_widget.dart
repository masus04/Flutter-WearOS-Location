import "package:flutter/material.dart";
import "package:flutter_wearos_location/location_provider.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

class LocationWidget extends HookConsumerWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final position = ref.watch(locationProvider);

    return TextButton(
      onPressed: () {},
      child: position.when(
        data: (position) => Text("Speed: ${position.speed?.toStringAsFixed(2)} m/s \nHeading: ${position.heading} °"),
        error: (error, stackTrace) {
          // throw error;

          debugPrint("The following error occurred: ${error.toString()}");
          debugPrintStack(stackTrace: stackTrace);
          return Text(error.toString());
        },
        loading: () => const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 8),
            Text("Initializing Geolocator"),
          ],
        ),
      ),
    );
  }
}
