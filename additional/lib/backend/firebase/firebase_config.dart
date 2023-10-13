import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBxosBBzH_wKgIWVIWipqM-TzMGYlof5I8",
            authDomain: "fursa-c8ab9.firebaseapp.com",
            projectId: "fursa-c8ab9",
            storageBucket: "fursa-c8ab9.appspot.com",
            messagingSenderId: "484032885103",
            appId: "1:484032885103:web:34eab79fff37e2c632789a",
            measurementId: "G-M4B04VK4WX"));
  } else {
    await Firebase.initializeApp();
  }
}
