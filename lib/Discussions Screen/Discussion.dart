import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class discussion extends StatefulWidget {
  const discussion({Key? key}) : super(key: key);

  @override
  _discussionState createState() => _discussionState();
}

class _discussionState extends State<discussion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFFcced00),
          scaffoldBackgroundColor: Colors.greenAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Discussion Screen'),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
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
              child: Text('down below you can leave your comments below for your selected match'),

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
                  child: Text('post'),
                  color: Colors.lightBlue,
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

        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.futbol),
              label: 'Matches',
              backgroundColor: Color(0xff12c387),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.newspaper),
              label: 'News',
              backgroundColor: Color(0xFFf0725c),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.trophy),
              label: 'Leagues',
              backgroundColor: Color(0xFFf0725c),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.star),
              label: 'Favorites',
              backgroundColor: Color(0xfff0725c),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'More',
              backgroundColor: Color(0xffcced00),
            ),
          ],
          selectedItemColor: Colors.yellowAccent,
          showUnselectedLabels: true,
        ),


      ),

    );
  }
}
