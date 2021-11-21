import 'package:flutter/material.dart';
import 'homeScreens/Splash.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OTF Score',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      home: SplashScreen(), //MyHomePage(title: 'OTF Score'),
    );
  }
}