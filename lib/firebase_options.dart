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
    apiKey: 'AIzaSyBfr7GF6Q-3CLHUr4J6qHdnB3aMFkUVL10',
    appId: '1:539090192474:web:23370ec61dacefb8797063',
    messagingSenderId: '539090192474',
    projectId: 'ulul-al-bab-islamic-community',
    authDomain: 'ulul-al-bab-islamic-community.firebaseapp.com',
    storageBucket: 'ulul-al-bab-islamic-community.firebasestorage.app',
    measurementId: 'G-N78G6TH3ER',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuI-ljUHx-k8VsbxM0MH6nlz9tN2mejLc',
    appId: '1:539090192474:android:a0e95d6a1f6f05b3797063',
    messagingSenderId: '539090192474',
    projectId: 'ulul-al-bab-islamic-community',
    storageBucket: 'ulul-al-bab-islamic-community.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcdVy-LdKyU1SqJB0RUkiFvLAV84OjQZM',
    appId: '1:539090192474:ios:872101505bd88b89797063',
    messagingSenderId: '539090192474',
    projectId: 'ulul-al-bab-islamic-community',
    storageBucket: 'ulul-al-bab-islamic-community.firebasestorage.app',
    iosBundleId: 'com.ululalbab.quranpally',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAcdVy-LdKyU1SqJB0RUkiFvLAV84OjQZM',
    appId: '1:539090192474:ios:90634c120b34e2f4797063',
    messagingSenderId: '539090192474',
    projectId: 'ulul-al-bab-islamic-community',
    storageBucket: 'ulul-al-bab-islamic-community.firebasestorage.app',
    iosBundleId: 'com.example.quranpally',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBfr7GF6Q-3CLHUr4J6qHdnB3aMFkUVL10',
    appId: '1:539090192474:web:374f748aa5433f09797063',
    messagingSenderId: '539090192474',
    projectId: 'ulul-al-bab-islamic-community',
    authDomain: 'ulul-al-bab-islamic-community.firebaseapp.com',
    storageBucket: 'ulul-al-bab-islamic-community.firebasestorage.app',
    measurementId: 'G-SJHVZ0GNXX',
  );
}