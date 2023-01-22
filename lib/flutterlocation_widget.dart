import "package:flutter/material.dart";
import 'package:flutter_wearos_location/flutterlocation_provider.dart';
import "package:hooks_riverpod/hooks_riverpod.dart";

class FlutterLocationWidget extends HookConsumerWidget {
  const FlutterLocationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final position = ref.watch(flutterLocationProvider);

    return TextButton(
      onPressed: () {},
      child: position.when(
        data: (position) => SizedBox(
          width: 150,
          child: Text("Flutter Location data: \n \nSpeed: ${position.speed?.toStringAsFixed(2)} m/s \nHeading: ${position.heading} °"),
        ),
        error: (error, stackTrace) {
          // throw error;

          debugPrint("The following error occurred: ${error.toString()}");
          debugPrintStack(stackTrace: stackTrace);
          return Text(error.toString());
        },
        loading: () => Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 8),
            Text("Initializing FlutterLocation"),
          ],
        ),
      ),
    );
  }
}
