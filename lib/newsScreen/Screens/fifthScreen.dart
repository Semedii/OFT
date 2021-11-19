import 'package:flutter/material.dart';
class fifthScreen extends StatelessWidget {
  const fifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar:  AppBar(
        backgroundColor: Colors.lightGreen,
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
      body:  Container(
        child : SingleChildScrollView(
          child:  Column(
            children: [

              Container(
                child: Image.asset("assets/photo4.jpg"),
              ),
              Container(
                child: Center(child: Text("Afghanistan’s national soccer team played a rare match this week. But what, and whom, does the team represent?",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: Center(child:
                Text("BELEK, Turkey — Anoush Dastgir may be the hardest-working man in soccer, but by Saturday, his job had taken a toll."
                    "\nPDastgir, the coach of Afghanistan’s men’s national team, was sitting in an empty restaurant at the hotel where he and his team were preparing for an exhibition match against Indonesia. It was 11 p.m., and Dastgir was battling what sounded like a heavy cold. Which wasn’t surprising, given he now had a dozen jobs to do.\n"
                    "Coaching a national soccer team is tough enough anywhere, but coaching Afghanistan has long had unique challenges."
                    "\nIt is one of the world’s poorest countries and a place where civil war and Taliban rule once kept the national team from playing a game for almost two decades. The country is considered so unsafe, in fact, that FIFA, soccer’s global governing body, has long banned its teams from playing at home. Most of the time, that hardly mattered: Afghanistan is ranked 152nd in the world. And it has never qualified for a major tournament.\n",
                  style : TextStyle(fontSize:12, color:Colors.white ),
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
