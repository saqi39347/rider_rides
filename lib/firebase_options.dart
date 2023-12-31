// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDaE8zkTQHAuYWcXRGZcrap2TGHPIMAlGY',
    appId: '1:1039782174031:web:b2b9bf156e44451fc5393a',
    messagingSenderId: '1039782174031',
    projectId: 'rider-rides',
    authDomain: 'rider-rides.firebaseapp.com',
    storageBucket: 'rider-rides.appspot.com',
    measurementId: 'G-G9K0XCG5EK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBh2y3U9ACQNK1ufDpQpJSOYml28cXoqiU',
    appId: '1:1039782174031:android:2040664c6fa641e2c5393a',
    messagingSenderId: '1039782174031',
    projectId: 'rider-rides',
    storageBucket: 'rider-rides.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADKyXqHDTmVlVyKD0rjxRyzZz8w_4xX8E',
    appId: '1:1039782174031:ios:0cdf8040b1e59533c5393a',
    messagingSenderId: '1039782174031',
    projectId: 'rider-rides',
    storageBucket: 'rider-rides.appspot.com',
    iosClientId: '1039782174031-tsoqdporeafltkhk8vqd63djghiir4qk.apps.googleusercontent.com',
    iosBundleId: 'com.example.ridesDriverApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADKyXqHDTmVlVyKD0rjxRyzZz8w_4xX8E',
    appId: '1:1039782174031:ios:0cdf8040b1e59533c5393a',
    messagingSenderId: '1039782174031',
    projectId: 'rider-rides',
    storageBucket: 'rider-rides.appspot.com',
    iosClientId: '1039782174031-tsoqdporeafltkhk8vqd63djghiir4qk.apps.googleusercontent.com',
    iosBundleId: 'com.example.ridesDriverApp',
  );
}
