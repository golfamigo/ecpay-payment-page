import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAnP3wcfuDgl17ZWSgg4Usloh6Sa8ahht0",
            authDomain: "ecpay-test-wkil4q.firebaseapp.com",
            projectId: "ecpay-test-wkil4q",
            storageBucket: "ecpay-test-wkil4q.appspot.com",
            messagingSenderId: "7177948497",
            appId: "1:7177948497:web:d9d7aabd77aecd82d6d770"));
  } else {
    await Firebase.initializeApp();
  }
}
