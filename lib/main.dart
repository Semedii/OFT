import 'dart:async';

import 'package:flutter/material.dart';
import 'homeScreens/Widgets.dart';
import 'homeScreens/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
//this homepage screen has the following
// A stack. and inside the stack are a listview where you can add the new matches
// the matches is a class with two parameters (the two teams)
// and also there Row with three different buttons in the stack.
//those three different buttons will navigate to three different screens
//inside the appbar there is settings which will navigate to setting screen and...
//..main menu where you can login or sign up.
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        drawer: DrawerScreen(),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){

            }, icon: Icon(Icons.settings))
          ],
          title: Text(widget.title),
        ),
        body:  Stack(
          children: [
            ListView(

              physics: BouncingScrollPhysics(), // this just for bouncing when scrolled
              children: [
                matches("Man United","Liverpool"),
                matches("Man United","Liverpool"),
                matches("Man United","Liverpool"),
                matches("Man United","Liverpool"),

              ],),
            Positioned.fill(
              // bottom: 20,
                child: Align(
                  alignment: Alignment.bottomCenter,

                  child:  Row(

                    children: [
                      Expanded(
                        child: Container(
                            height: 60,

                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.article),
                                Text("News", style: TextStyle( color: Colors.white,
                                  fontSize: 16,),)
                              ],
                            )

                        ),
                      ),
                      Expanded(
                        child: Container(
                            height: 60,
                            width: 0.4*390,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.article),
                                Text("Discussion", style: TextStyle( color: Colors.white,
                                  fontSize: 16,),)
                              ],
                            )

                        ),
                      ),
                      Expanded(
                        child: Container(
                            height: 60,
                            width: 0.4*390,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.favorite),
                                Text("Favourites", style: TextStyle( color: Colors.white,
                                  fontSize: 16,),)
                              ],
                            )

                        ),
                      )
                    ],),
                ))
          ],
        )


      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}