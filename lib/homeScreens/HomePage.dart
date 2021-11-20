import 'package:flutter/material.dart';
import 'package:project/Screens/MatchDetail.dart';
import 'package:project/Screens/drawer.dart';
import 'package:project/Widgets.dart';

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
      backgroundColor: Color(0xFFcced00),
      drawer: DrawerScreen(),
      appBar: AppBar(
      actions: [
        IconButton(onPressed: (){
          //setting screen
        }, icon: Icon(Icons.settings))
      ],
        title: Text(widget.title),
      ),
      body:  Stack(
        children: [
           ListView(
       
        physics: BouncingScrollPhysics(), // this just for bouncing when scrolled
        children: [
         GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MatchDetailScreen("Man United vs Liverpool")));
           },
           child: matches("Man United","Liverpool")
           ),
       GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MatchDetailScreen("Man United vs Liverpool")));
           },
           child: matches("Man United","Liverpool")
           ),
            GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MatchDetailScreen("Man United vs Liverpool")));
           },
           child: matches("Man United","Liverpool")
           ),
              GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MatchDetailScreen("Man United vs Liverpool")));
           },
           child: matches("Man United","Liverpool")
           ),
         
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