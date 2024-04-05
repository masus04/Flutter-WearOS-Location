import 'package:flutter/material.dart';
import 'package:flutter_wearos_location/jni_location.dart';

class JNILocationWidget extends StatelessWidget {
  const JNILocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => JNILocation().sayHi(),
        child: const Text("Say Hi to JNI Location"),
      ),
    );
  }
}
