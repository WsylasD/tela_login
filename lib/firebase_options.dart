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
    apiKey: 'AIzaSyDmynSvUG4MDG9kwEyu8IVDC6ClNRJvShc',
    appId: '1:657750711510:web:086e19c7df14251e89bd77',
    messagingSenderId: '657750711510',
    projectId: 'tela-login-c2504',
    authDomain: 'tela-login-c2504.firebaseapp.com',
    storageBucket: 'tela-login-c2504.firebasestorage.app',
    measurementId: 'G-7N3R4E0SEG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5Pq3nHdA0ePk-FXHubwos2d_J2UB-0GQ',
    appId: '1:657750711510:android:c7483b2210ce274a89bd77',
    messagingSenderId: '657750711510',
    projectId: 'tela-login-c2504',
    storageBucket: 'tela-login-c2504.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDdMQWQgMNLQOuQ9VvInt_k1Fh6PhG3Qro',
    appId: '1:657750711510:ios:52b35b070253327089bd77',
    messagingSenderId: '657750711510',
    projectId: 'tela-login-c2504',
    storageBucket: 'tela-login-c2504.firebasestorage.app',
    iosBundleId: 'com.example.telaLogin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDdMQWQgMNLQOuQ9VvInt_k1Fh6PhG3Qro',
    appId: '1:657750711510:ios:52b35b070253327089bd77',
    messagingSenderId: '657750711510',
    projectId: 'tela-login-c2504',
    storageBucket: 'tela-login-c2504.firebasestorage.app',
    iosBundleId: 'com.example.telaLogin',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDmynSvUG4MDG9kwEyu8IVDC6ClNRJvShc',
    appId: '1:657750711510:web:c459a8a5f380ff4989bd77',
    messagingSenderId: '657750711510',
    projectId: 'tela-login-c2504',
    authDomain: 'tela-login-c2504.firebaseapp.com',
    storageBucket: 'tela-login-c2504.firebasestorage.app',
    measurementId: 'G-FDPFJRYJKM',
  );
}
