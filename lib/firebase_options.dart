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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMe93WucGzXuGGPLsO0uZXpZe0i3elZDw',
    appId: '1:1064241592507:android:8094200a4ecc5853a2919e',
    messagingSenderId: '1064241592507',
    projectId: 'learninglounge-48809',
    databaseURL: 'https://learninglounge-48809-default-rtdb.firebaseio.com',
    storageBucket: 'learninglounge-48809.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALIhO9TebLll9dwzyM-N3omaKwA8nryW4',
    appId: '1:1064241592507:ios:1b0a74b50dc5d04aa2919e',
    messagingSenderId: '1064241592507',
    projectId: 'learninglounge-48809',
    databaseURL: 'https://learninglounge-48809-default-rtdb.firebaseio.com',
    storageBucket: 'learninglounge-48809.appspot.com',
    iosClientId: '1064241592507-pkuscaeb66mapisv65buuabnopcvnn86.apps.googleusercontent.com',
    iosBundleId: 'com.example.learningLounge',
  );
}
