//Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

//Mateiral UI
import 'package:flutter/material.dart';

//Paginas
import 'package:pokedex/pages/login_page.dart';
import 'package:pokedex/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDO9xqu9B1E9nT07FeA7nXvm19FHnpooX8",
        authDomain: "pokedex-app-ca7c2.firebaseapp.com",
        projectId: "pokedex-app-ca7c2",
        storageBucket: "pokedex-app-ca7c2.firebasestorage.app",
        messagingSenderId: "795132023017",
        appId: "1:795132023017:web:5e5d7e9f0d3fef90526078"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
