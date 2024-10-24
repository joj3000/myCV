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
    apiKey: 'AIzaSyA98UBx_iBtV80hh5ksOGU26EmVnE95qVo',
    appId: '1:703473825724:web:4ec8f0ace58ddc545c5db9',
    messagingSenderId: '703473825724',
    projectId: 'my-cv-e36da',
    authDomain: 'my-cv-e36da.firebaseapp.com',
    storageBucket: 'my-cv-e36da.appspot.com',
    measurementId: 'G-XF4MWS0ZC5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3Jc-b1h6y1V6ojsNoJdT6vu5l7oy-qBU',
    appId: '1:703473825724:android:271a669d2ed3c0845c5db9',
    messagingSenderId: '703473825724',
    projectId: 'my-cv-e36da',
    storageBucket: 'my-cv-e36da.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA1bE7lSIClpvls5AC9tOdxVp6g0z3RCCs',
    appId: '1:703473825724:ios:ef888e65ef37f62c5c5db9',
    messagingSenderId: '703473825724',
    projectId: 'my-cv-e36da',
    storageBucket: 'my-cv-e36da.appspot.com',
    iosClientId: '703473825724-36296b6op5nf0oft1g3qh83qeehfbrek.apps.googleusercontent.com',
    iosBundleId: 'com.example.myCv',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA1bE7lSIClpvls5AC9tOdxVp6g0z3RCCs',
    appId: '1:703473825724:ios:ef888e65ef37f62c5c5db9',
    messagingSenderId: '703473825724',
    projectId: 'my-cv-e36da',
    storageBucket: 'my-cv-e36da.appspot.com',
    iosClientId: '703473825724-36296b6op5nf0oft1g3qh83qeehfbrek.apps.googleusercontent.com',
    iosBundleId: 'com.example.myCv',
  );
}