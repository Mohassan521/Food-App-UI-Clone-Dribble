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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDQxQkTjqGtY1fwXzfF15NDepms10GPjDw',
    appId: '1:1085531399173:web:c809d8636d8b6b8931e86c',
    messagingSenderId: '1085531399173',
    projectId: 'auto-notifications-1121c',
    authDomain: 'auto-notifications-1121c.firebaseapp.com',
    storageBucket: 'auto-notifications-1121c.appspot.com',
    measurementId: 'G-E0J3FLHPST',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJ0_HORg_vQfhDKleGYCMFnMW43151y0A',
    appId: '1:1085531399173:android:0d68a9587df7b10631e86c',
    messagingSenderId: '1085531399173',
    projectId: 'auto-notifications-1121c',
    storageBucket: 'auto-notifications-1121c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIsT1SN4xnNOirfn3rzsBVROmnSWXN0Eo',
    appId: '1:1085531399173:ios:767a7dcef5f4108431e86c',
    messagingSenderId: '1085531399173',
    projectId: 'auto-notifications-1121c',
    storageBucket: 'auto-notifications-1121c.appspot.com',
    iosBundleId: 'com.example.apiTesting',
  );
}
