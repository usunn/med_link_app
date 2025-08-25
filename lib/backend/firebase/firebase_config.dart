import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAfyvRZN2y8dgVmRKcejLIHIa2M_Q2FI94",
            authDomain: "app1234-3c8f2.firebaseapp.com",
            projectId: "app1234-3c8f2",
            storageBucket: "app1234-3c8f2.firebasestorage.app",
            messagingSenderId: "746571971171",
            appId: "1:746571971171:web:f9e3e6b3945c40588c1656",
            measurementId: "G-N3814GHRB1"));
  } else {
    await Firebase.initializeApp();
  }
}
