import 'package:flutter/material.dart';
import 'package:term_roject/newsScreen/Screens/fifthScreen.dart';
import 'package:term_roject/newsScreen/Screens/fourthScreen.dart';
import 'package:term_roject/newsScreen/Screens/secondScreen.dart';
import 'package:term_roject/newsScreen/Screens/thirdScreen.dart';


class HomeNews  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5a5a5a),

      appBar: AppBar(
        backgroundColor: Color(0xff12c387),
        title : Text(
          'News',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color : Colors.black,
          ),
        ),
        centerTitle : true,


      ),

      body : Container(

        child : SingleChildScrollView(

          child : Column(


            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children : <Widget>[



                  Container(

                    height: 150.0,
                    width:   200.0,
                    child : Image.asset('images/photo1.jpg'),

                  ),
                  Container (
                    padding: EdgeInsets.all(20.0),
                    height: 110.0,
                    width : 200,
                    child : Text(
                      'Lineol messi scored a screamer in the Uefa Cup against poor form Man Utd',
                      style : TextStyle (
                        fontSize: 13.0,
                        color : Colors.white,
                      ),
                    ),
                  )
                ],

              ),
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=> secondScreen(),
                    ));
                  }
              ),
              GestureDetector(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children : <Widget>[



                  Container(

                    height: 150.0,
                    width:   200.0,
                    child : Image.asset('images/photo2.jpg'),

                  ),
                  Container (
                    padding: EdgeInsets.all(20.0),
                    height: 110.0,
                    width : 200,
                    child : Text(
                      'Credible sources state that Cr7 is  questioning his choice on coming to Man UTD',
                      style : TextStyle (
                        fontSize: 13.0,
                        color : Colors.white,
                      ),
                    ),
                  )
                ],

              ),
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=> thirdScreen(),
                    ));
                  }
              ),
              GestureDetector(child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children : <Widget>[



                  Container(


                    height: 150.0,
                    width:   200.0,
                    child : Image.asset('images/photo33.jpg'),

                  ),
                  Container (
                    padding: EdgeInsets.all(10.0),
                    height: 110.0,
                    width : 200,
                    child : Text(
                      'Karim Benzema is nominated for the infamous Balondor prize as the player shows remarkable peformance this season ',
                      style : TextStyle (
                        fontSize: 13.0,
                        color : Colors.white,
                      ),
                    ),
                  )
                ],

              ),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => fourthScreen(),
                    ));
                  }
              ),
              GestureDetector(child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children : <Widget>[



                  Container(



                    height: 150.0,
                    width:   200.0,
                    child : Image.asset('images/photo4.jpg'),

                  ),
                  Container (
                    padding: EdgeInsets.all(10.0),

                    height: 110.0,
                    width : 200,
                    child : Text(
                      'Afghanistan’s national soccer team played a rare match this week. But what, and whom, does the team represent?',
                      style : TextStyle (
                        fontSize: 13.0,
                        color : Colors.white,

                      ),
                    ),
                  )
                ],

              ),
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=> fifthScreen(),
                    ));

                  }

              ),
            ],
          ),
        ),

      ),

    );
  }
}

