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
    apiKey: 'AIzaSyCslUIyRG1FYRq07U0XqjdUSoHcfHUQAbs',
    appId: '1:943164592210:android:c283666b8cfa9c157f0f8b',
    messagingSenderId: '943164592210',
    projectId: 'srpallab-drive',
    storageBucket: 'srpallab-drive.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANvv6oEkju1MiJkphQy723uLIV2jNoBGM',
    appId: '1:943164592210:ios:c8fb8ec6e0c88c0c7f0f8b',
    messagingSenderId: '943164592210',
    projectId: 'srpallab-drive',
    storageBucket: 'srpallab-drive.appspot.com',
    androidClientId: '943164592210-jrsssnq52ddqegh726kalokm2obba2ak.apps.googleusercontent.com',
    iosClientId: '943164592210-ga5ji49nhn9pmn1lcc12uerlu9ccdq4e.apps.googleusercontent.com',
    iosBundleId: 'com.srpallab.srpDrive',
  );
}
