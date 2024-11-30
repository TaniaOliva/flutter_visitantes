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
    apiKey: 'AIzaSyCAXWP5gOiWhpNjgI4lraF26Xug97qbIGs',
    appId: '1:65213445853:web:f5d36a4b90e9778e814d34',
    messagingSenderId: '65213445853',
    projectId: 'flutter-visitantes',
    authDomain: 'flutter-visitantes.firebaseapp.com',
    storageBucket: 'flutter-visitantes.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7x48WIeRONQwp5YKHLQWQZ3xaGXXRuAA',
    appId: '1:65213445853:android:228329dee285703a814d34',
    messagingSenderId: '65213445853',
    projectId: 'flutter-visitantes',
    storageBucket: 'flutter-visitantes.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2PgcY9JX5B8ikDDEJchVKdyPs502Fw0Y',
    appId: '1:65213445853:ios:c6a948e50549f37d814d34',
    messagingSenderId: '65213445853',
    projectId: 'flutter-visitantes',
    storageBucket: 'flutter-visitantes.firebasestorage.app',
    iosBundleId: 'com.example.flutterVisitantes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2PgcY9JX5B8ikDDEJchVKdyPs502Fw0Y',
    appId: '1:65213445853:ios:c6a948e50549f37d814d34',
    messagingSenderId: '65213445853',
    projectId: 'flutter-visitantes',
    storageBucket: 'flutter-visitantes.firebasestorage.app',
    iosBundleId: 'com.example.flutterVisitantes',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCAXWP5gOiWhpNjgI4lraF26Xug97qbIGs',
    appId: '1:65213445853:web:5f71ec0d176e0bf4814d34',
    messagingSenderId: '65213445853',
    projectId: 'flutter-visitantes',
    authDomain: 'flutter-visitantes.firebaseapp.com',
    storageBucket: 'flutter-visitantes.firebasestorage.app',
  );
}