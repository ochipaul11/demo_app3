import 'package:demo_app3/ui/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'authentication.dart';

Future<void> main() async {
  //initialize since it's ana asynchronous process
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: FirebaseOptions(
    apiKey: "AIzaSyA6QYAowyfF0UJvECiUiSR_o2yjxx-cnnM", // Your apiKey
    appId: "1:411970310346:android:cd02e0f7d08cbac378e433", // Your appId
    messagingSenderId: "411970310346", // Your messagingSenderId
    projectId: "crypto-wallet-5b3e5", // Your projectId
  ),);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: Authentication(),
      routes:{
    HomePage.routeName:(context) => HomePage()
    },
    );
  }
}



