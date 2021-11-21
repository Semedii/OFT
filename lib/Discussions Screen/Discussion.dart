import 'package:flutter/material.dart';



class discussion extends StatefulWidget {
  const discussion({Key? key}) : super(key: key);

  @override
  _discussionState createState() => _discussionState();
}

class _discussionState extends State<discussion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF5a5a5a),
          scaffoldBackgroundColor:Color(0xFF5a5a5a)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Discussions',
          style: TextStyle(
              color: Colors.black,
          ),),
          centerTitle: true,
          backgroundColor: Color(0xff12c387),
        ),
        body:

        ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/abc.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text('Write your comments about the match down below',
              style: TextStyle(
                color: Colors.white,
              ),),

            ),
            Row(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.fromLTRB(32.0, 32.0, 8.0, 0.0),
                  child: Container(
                    height: 180,
                    width: 280,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                  ),
                ),
                FlatButton(onPressed: ()

                {},
                  child: Text('Post'),
                  color: Color(0xff12c387),
                )
              ],
            ),
            Row(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.fromLTRB(180.0, 2.0, 0.0,0.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 26.0,

                  ),
                ),


              ],
            )


          ],
        ),


      ),

    );
  }
}
