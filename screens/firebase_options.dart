// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCIMA0upyR65wdvfCELlzvbbjXjmhnQAGc',
    appId: '1:573865138662:web:51e04e66d052475cf01e27',
    messagingSenderId: '573865138662',
    projectId: 'see-tech-24353',
    authDomain: 'see-tech-24353.firebaseapp.com',
    storageBucket: 'see-tech-24353.appspot.com',
    measurementId: 'G-EG20S6PBZP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBX7H-73ThKjod1fXi4JU4eD3h84Kplw6g',
    appId: '1:573865138662:android:f43ca1233c77741ef01e27',
    messagingSenderId: '573865138662',
    projectId: 'see-tech-24353',
    storageBucket: 'see-tech-24353.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpLy1kkXSbGBkrOQrW4tdtM2AOBol51LY',
    appId: '1:573865138662:ios:d23f9dac0960241cf01e27',
    messagingSenderId: '573865138662',
    projectId: 'see-tech-24353',
    storageBucket: 'see-tech-24353.appspot.com',
    iosBundleId: 'com.example.auth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpLy1kkXSbGBkrOQrW4tdtM2AOBol51LY',
    appId: '1:573865138662:ios:d23f9dac0960241cf01e27',
    messagingSenderId: '573865138662',
    projectId: 'see-tech-24353',
    storageBucket: 'see-tech-24353.appspot.com',
    iosBundleId: 'com.example.auth',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCIMA0upyR65wdvfCELlzvbbjXjmhnQAGc',
    appId: '1:573865138662:web:28323e71e3e48c67f01e27',
    messagingSenderId: '573865138662',
    projectId: 'see-tech-24353',
    authDomain: 'see-tech-24353.firebaseapp.com',
    storageBucket: 'see-tech-24353.appspot.com',
    measurementId: 'G-VWMXJLV6HL',
  );
}
