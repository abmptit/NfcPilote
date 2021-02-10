import 'package:flutter/material.dart';
import 'package:nfc_pilote/screens/home.dart';
import 'package:nfc_pilote/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFC Pilote',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: SplashScreen(),
      home: HomePage(title: "Home",),
      debugShowCheckedModeBanner: false,
    );
  }
}