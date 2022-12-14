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
    apiKey: 'AIzaSyBKIxSRJFzByT6XrT4u3My2QFcJ81rtZrI',
    appId: '1:266132329160:web:91a834879801cfa1c8cbfd',
    messagingSenderId: '266132329160',
    projectId: 'fcm-ios-test-1031',
    authDomain: 'fcm-ios-test-1031.firebaseapp.com',
    storageBucket: 'fcm-ios-test-1031.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBaBRf6oo8b_8iGlHrzNs3SR9bar3UJ4tY',
    appId: '1:266132329160:android:dcbcffaebbc1a5b5c8cbfd',
    messagingSenderId: '266132329160',
    projectId: 'fcm-ios-test-1031',
    storageBucket: 'fcm-ios-test-1031.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjL4EX_8ZBRo3MQae-pWlrXnqAEoGThe0',
    appId: '1:266132329160:ios:45882d158ab7a15dc8cbfd',
    messagingSenderId: '266132329160',
    projectId: 'fcm-ios-test-1031',
    storageBucket: 'fcm-ios-test-1031.appspot.com',
    iosClientId: '266132329160-kllpo5pqk0sknevcg0lo7g40epvn719b.apps.googleusercontent.com',
    iosBundleId: 'com.example.fcmIosTest1031',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjL4EX_8ZBRo3MQae-pWlrXnqAEoGThe0',
    appId: '1:266132329160:ios:aff6301ba35749cdc8cbfd',
    messagingSenderId: '266132329160',
    projectId: 'fcm-ios-test-1031',
    storageBucket: 'fcm-ios-test-1031.appspot.com',
    iosClientId: '266132329160-fqms15d17eis4uoatkp8e19qkpou448r.apps.googleusercontent.com',
    iosBundleId: 'com.example.fcmIosTest',
  );
}
