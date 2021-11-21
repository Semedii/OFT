import 'package:flutter/material.dart';
import 'Widgets.dart';

class MatchDetailScreen extends StatefulWidget {

 String title;
  MatchDetailScreen(this.title);

@override
  _MatchDetailScreenState createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
 
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF5a5a5a),
       appBar: AppBar(
         leading: IconButton(
           icon: Icon(Icons.arrow_back, color: Colors.black),
           onPressed: () => Navigator.of(context).pop(),
         ),
         automaticallyImplyLeading: false,
         backgroundColor: Color(0xff12c387),
        title: Text(widget.title,
        style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: 
      Container(
        
        child: SingleChildScrollView(
          child: Column(
            children: [
            matches("Man united","Liverpool"),

            Container(
          
              decoration: BoxDecoration(

              color:   Color(0xff12c387),
                borderRadius: BorderRadius.circular(15)
              ),
             height: 180,
           
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black.withOpacity(0.4))
                       ),
                child:Row(
                  
                  children: [

                    Icon(Icons.calendar_today),
                    Text("Fri | 26 Nov 2021 | 10:45pm")
                  ],
                ),
                  ),

                 Container(
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black.withOpacity(0.4))
                       ),
                child: Row(
                  children: [
                    Icon(Icons.sports_soccer),
                    Text("Premiere League")
                  ],
                ),
                 ),
                 Container(
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black.withOpacity(0.4))
                       ),
                child:  Row(
                  children: [
                    Icon(Icons.place),
                    Text("Old Trafford Stadium")
                  ],
                ),
                 ),

                  Container(
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black.withOpacity(0.4))
                       ),
                child: Row(
                  children: [
                    Icon(Icons.male_outlined),
                    Text("Anthony Taylor")
                  ],
                ))
              ],),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
             // height: 20,
             width: size.width,
              color: Color(0xFF5a5a5a),
              child: Center(child: Text("Line Up", style: TextStyle(color: Colors.white, fontSize: 20),)),
            ),
            Column(
              //height: 180,
              children: [ 
                Lineup("Alisson", "Dean Henderson"),
               Lineup("Alisson", "Dean Henderson"),
               Lineup("Alisson", "Dean Henderson"),
               Lineup("Alisson", "Dean Henderson"),
                Lineup("Alisson", "Dean Henderson"),
               Lineup("Alisson", "Dean Henderson"),
               Lineup("Alisson", "Dean Henderson"),
               Lineup("Alisson", "Dean Henderson"),
                Lineup("Alisson", "Dean Henderson"),
               Lineup("Alisson", "Dean Henderson"),
               Lineup("Alisson", "Dean Henderson"),
             
              ]
            )
            
           
          ],),
        ),
      ),
      
    );
  }
}