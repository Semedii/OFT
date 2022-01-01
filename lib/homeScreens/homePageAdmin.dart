import 'package:flutter/material.dart';
import 'MatchDetail.dart';
import 'Widgets.dart';
import 'drawer.dart';
import 'drawerLoggedIn.dart';

//this homepage screen has the following
// A stack. and inside the stack are a listview where you can add the new matches
// the matches is a class with two parameters (the two teams)
// and also there Row with three different buttons in the stack.
//those three different buttons will navigate to three different screens
//inside the appbar there is settings which will navigate to setting screen and...
//..main menu where you can login or sign up.


class MyHomePageAdmin extends StatefulWidget {
  MyHomePageAdmin({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageAdminState createState() => _MyHomePageAdminState();
}

class _MyHomePageAdminState extends State<MyHomePageAdmin> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF5a5a5a),
      drawer:  DrawerScreenL(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color (0xff12c387),
        actions: [
          IconButton(onPressed: (){
            //setting screen
          }, icon: Icon(Icons.settings,
            color: Colors.black,))
        ],
        title: Text(widget.title,
          style: TextStyle(
              color: Colors.black
          ),),
      ),
      body:
      Stack(
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
        ],
      ),

    );
  }
}