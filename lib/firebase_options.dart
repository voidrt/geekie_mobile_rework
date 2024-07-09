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
    apiKey: 'AIzaSyCQuUsepGlHU6cTJ6bif_sNa5OUFjBs_Fk',
    appId: '1:264518515047:android:7acc7c4dac3026edf797c2',
    messagingSenderId: '264518515047',
    projectId: 'geekreep',
    storageBucket: 'geekreep.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfLnm-GvTjSAITMmsPZm-bL1JyBHqDz7U',
    appId: '1:264518515047:ios:9d953c85f781e04df797c2',
    messagingSenderId: '264518515047',
    projectId: 'geekreep',
    storageBucket: 'geekreep.appspot.com',
    androidClientId: '264518515047-8d1vjg2h29klr8csg0qdctdhlpbfdp92.apps.googleusercontent.com',
    iosClientId: '264518515047-3o90ve6fqe77kjsi9tm41l9l209jsv63.apps.googleusercontent.com',
    iosBundleId: 'com.example.geekieMobileRework',
  );

}