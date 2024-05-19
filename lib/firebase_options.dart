import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyDGr50y39S_nXln4I5ZOEd-KUlc6ySBsK8',
    appId: '1:325314117383:web:0201d6659afa54774b4fa2',
    messagingSenderId: '325314117383',
    projectId: 'dating-app-11d3b',
    authDomain: 'dating-app-11d3b.firebaseapp.com',
    storageBucket: 'dating-app-11d3b.appspot.com',
    measurementId: 'G-TYFWFRKSWF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAH6vjUQXcOemXALPRDkhTZTPTgSC6VlJw',
    appId: '1:325314117383:android:ca3d402d82e9a17d4b4fa2',
    messagingSenderId: '325314117383',
    projectId: 'dating-app-11d3b',
    storageBucket: 'dating-app-11d3b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxMYEkb_mtwf1IA69mefhAB1UsyYnE1-U',
    appId: '1:325314117383:ios:422547b4a3a9b8324b4fa2',
    messagingSenderId: '325314117383',
    projectId: 'dating-app-11d3b',
    storageBucket: 'dating-app-11d3b.appspot.com',
    iosBundleId: 'com.example.datingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxMYEkb_mtwf1IA69mefhAB1UsyYnE1-U',
    appId: '1:325314117383:ios:422547b4a3a9b8324b4fa2',
    messagingSenderId: '325314117383',
    projectId: 'dating-app-11d3b',
    storageBucket: 'dating-app-11d3b.appspot.com',
    iosBundleId: 'com.example.datingApp',
  );
}
