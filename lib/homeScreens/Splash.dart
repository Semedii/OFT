import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/Screens/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}
//This splash Screen is the welcome screen. It will only last 2 seconds
class _SplashScreenState extends State<SplashScreen> {
  @override
  //this function is gonna count the time. the 2seconds
  void initState() {
    super.initState();
    new Timer(const Duration(seconds: 2), onclose);
    //Timer(Duration(seconds: 3), onclose());
  }
  //this function will destroy the splash screen when the time is up. and it will direct you to the homepage
  void onclose(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MyHomePage(title: 'OTF Score')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            
           child: Image.asset("images/wal.jpg", fit: BoxFit.cover,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Expanded(
              flex: 2,
                          child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   CircularProgressIndicator(
                     backgroundColor: Colors.white,
                   ),
                   Text("Connecting to OFTScore", style: TextStyle(color: Colors.white, fontSize: 20),)
                  ],
                ),
              ),
            )
          ],)
      ],)
    );
  }
}