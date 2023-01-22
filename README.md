# Flutter-WearOS-Location

Test Project for Flutter location on WearOS & Android Mobile

Steps to reproduce:

* Start project on either a wearOs Watch type or android mobile device
* Progress indicator & loading message might appear -> hot restart

## Mobile console log:

```
Launching lib/main.dart on sdk gphone64 x86 64 in debug mode...
Running Gradle task 'assembleDebug'...
✓  Built build/app/outputs/flutter-apk/app-debug.apk.
D/FlutterGeolocator( 7053): Attaching Geolocator to activity
D/FlutterGeolocator( 7053): Creating service.
D/FlutterGeolocator( 7053): Binding to location service.
D/FlutterGeolocator( 7053): Geolocator foreground service connected
D/FlutterGeolocator( 7053): Initializing Geolocator services
D/FlutterGeolocator( 7053): Flutter engine connected. Connected engine count 1
Debug service listening on ws://127.0.0.1:36951/LqjelzE7zxs=/ws
Syncing files to device sdk gphone64 x86 64...
I/wearos_location( 7053): Compiler allocated 4533KB to compile void android.view.ViewRootImpl.performTraversals()
I/flutter ( 7053): Initializing GeoLocator
E/FlutterGeolocator( 7053): Geolocator position updates started
E/SurfaceSyncer( 7053): Failed to find sync for id=0
W/Parcel  ( 7053): Expecting binder but got null!
D/EGL_emulation( 7053): app_time_stats: avg=21.08ms min=3.63ms max=89.87ms count=20
D/EGL_emulation( 7053): app_time_stats: avg=7.85ms min=1.73ms max=29.29ms count=24
D/EGL_emulation( 7053): app_time_stats: avg=6.34ms min=1.55ms max=32.13ms count=23
D/EGL_emulation( 7053): app_time_stats: avg=5.31ms min=1.67ms max=27.66ms count=28
I/flutter ( 7053): Current Speed: 1.3889987468719482 m/s
I/flutter ( 7053): Current Speed: 1.3889987468719482 m/s
D/EGL_emulation( 7053): app_time_stats: avg=151.05ms min=1.17ms max=1868.30ms count=13
I/flutter ( 7053): Current Speed: 1.3889987468719482 m/s
D/EGL_emulation( 7053): app_time_stats: avg=2997.02ms min=2997.02ms max=2997.02ms count=1
I/flutter ( 7053): Current Speed: 1.3889987468719482 m/s
D/EGL_emulation( 7053): app_time_stats: avg=2985.55ms min=2985.55ms max=2985.55ms count=1

```

## WearOS console log:

```
Launching lib/main.dart on sdk gwear x86 in debug mode...
Running Gradle task 'assembleDebug'...
✓  Built build/app/outputs/flutter-apk/app-debug.apk.
Installing build/app/outputs/flutter-apk/app.apk...
D/FlutterGeolocator( 4135): Attaching Geolocator to activity
D/FlutterGeolocator( 4135): Creating service.
D/FlutterGeolocator( 4135): Binding to location service.
D/FlutterGeolocator( 4135): Geolocator foreground service connected
D/FlutterGeolocator( 4135): Initializing Geolocator services
D/FlutterGeolocator( 4135): Flutter engine connected. Connected engine count 1
Debug service listening on ws://127.0.0.1:39289/2bRo_AjON9Q=/ws
Syncing files to device sdk gwear x86...
I/flutter ( 4135): Initializing GeoLocator
E/FlutterGeolocator( 4135): Geolocator position updates started
I/wearos_locatio( 4135): Waiting for a blocking GC ProfileSaver
I/flutter ( 4135): The following error occurred: The location service on the device is disabled.
I/flutter ( 4135): #0      GeolocatorAndroid.getPositionStream.<anonymous closure> (package:geolocator_android/src/geolocator_android.dart:187:9)
I/flutter ( 4135): (elided 26 frames from dart:async)

```