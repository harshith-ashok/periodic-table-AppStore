import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:periodic_table/content/elements.dart';
import 'package:periodic_table/resource/element.dart';
import 'package:periodic_table/screens/about.dart';
import 'package:periodic_table/screens/home.dart';

import 'screens/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static List _page = [
    Home(),
    About(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  IconData icon = FontAwesomeIcons.moon;
  ThemeData theme = ThemeData.dark();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black12,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Periodic Table',
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: _page.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavyBar(
          itemCornerRadius: 20,
          selectedIndex: _selectedIndex,
          onItemSelected: (index) {
            setState(() => _selectedIndex = index);
            _onItemTapped(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              title: Text('Home'),
              icon: Icon(
                FontAwesomeIcons.atom,
              ),
              activeColor: Colors.blue,
            ),
            // BottomNavyBarItem(
            //   activeColor: Colors.green,
            //   inactiveColor: Colors.green,
            //   title: Text(
            //     'Search',
            //     style: TextStyle(
            //         //color: Colors.black,
            //         ),
            //   ),
            //   icon: Icon(
            //     FontAwesomeIcons.search,
            //     //color: Colors.black,
            //   ),
            // ),
            BottomNavyBarItem(
              activeColor: Colors.orange,
              inactiveColor: Colors.orange,
              title: Text(
                'About',
                style: TextStyle(
                    //color: Colors.black,
                    ),
              ),
              icon: Icon(
                FontAwesomeIcons.user,
                //color: Colors.black,
              ),
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       activeIcon: Icon(FontAwesomeIcons.angleUp),
        //       icon: Icon(Icons.home),
        //       // ignore: deprecated_member_use
        //       title: Text(
        //         'Home',
        //         style: TextStyle(
        //           fontWeight: FontWeight.normal,
        //         ),
        //       ),
        //     ),
        //     // BottomNavigationBarItem(
        //     //   activeIcon: Icon(FontAwesomeIcons.angleUp),
        //     //   icon: Icon(Icons.search),
        //     //   title: Text(
        //     //     'Search Element',
        //     //     style: TextStyle(
        //     //       fontWeight: FontWeight.normal,
        //     //     ),
        //     //   ),
        //     // ),
        //     BottomNavigationBarItem(
        //       activeIcon: Icon(FontAwesomeIcons.angleUp),
        //       icon: Icon(Icons.more_horiz),
        //       // ignore: deprecated_member_use
        //       title: Text(
        //         'More',
        //         style: TextStyle(
        //           fontWeight: FontWeight.normal,
        //         ),
        //       ),
        //     ),
        //   ],
        //   onTap: _onItemTapped,
        //   currentIndex: _selectedIndex,
        // ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
