import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:term_roject/homeScreens/homePageAdmin.dart';

import 'Discussions Screen/Discussion.dart';
import 'Favourite Screen/fav.dart';
import 'newsScreen/news/News.dart';



class NavAdmin extends StatefulWidget {

  @override
  _NavAdminState createState() => _NavAdminState();
}

class _NavAdminState extends State<NavAdmin> {
  int selectedPage = 0;

  final _pageOptions = [
    MyHomePageAdmin(title: 'OTF Score'),
    HomeNews(),
    const discussion(),
    const fav(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.futbol),
            label: 'Matches',
            backgroundColor: Color(0xff12c387),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.newspaper),
            label: 'News',
            backgroundColor: Color(0xff12c387),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            label: 'Discussion',
            backgroundColor: Color(0xff12c387),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.star),
            label: 'Favorites',
            backgroundColor: Color(0xff12c387),
          ),
        ],
        currentIndex: selectedPage,
        onTap: (index){
          setState(() {
            selectedPage = index;
          });
        },
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}