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
    apiKey: 'AIzaSyC0AFLjbeFJOpOCDbF1MwBwkMAQPp0-46I',
    appId: '1:826183317408:web:60927a7a4def79367ad6c5',
    messagingSenderId: '826183317408',
    projectId: 'cosmetic-ffdc8',
    authDomain: 'cosmetic-ffdc8.firebaseapp.com',
    storageBucket: 'cosmetic-ffdc8.appspot.com',
    measurementId: 'G-C79P7BP0P0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnmRTybg1B-MM3qxd3Bn0fO5TmYd783Bw',
    appId: '1:826183317408:android:91d63f6ef5a7f3bf7ad6c5',
    messagingSenderId: '826183317408',
    projectId: 'cosmetic-ffdc8',
    storageBucket: 'cosmetic-ffdc8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCJmUGVU1_VEHQnTfabrXTpM7r6Yh0wJE4',
    appId: '1:826183317408:ios:a1d62baabb5202997ad6c5',
    messagingSenderId: '826183317408',
    projectId: 'cosmetic-ffdc8',
    storageBucket: 'cosmetic-ffdc8.appspot.com',
    iosBundleId: 'com.cos.cosme',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCJmUGVU1_VEHQnTfabrXTpM7r6Yh0wJE4',
    appId: '1:826183317408:ios:9f0fade80126b8a67ad6c5',
    messagingSenderId: '826183317408',
    projectId: 'cosmetic-ffdc8',
    storageBucket: 'cosmetic-ffdc8.appspot.com',
    iosBundleId: 'com.cos.cosme.RunnerTests',
  );
}
