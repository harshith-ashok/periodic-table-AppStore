import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:periodic_table/content/elements.dart';
import 'package:periodic_table/resource/element.dart';
import 'package:periodic_table/screens/about.dart';

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
    //Search(),
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
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Icon(FontAwesomeIcons.angleUp),
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            // BottomNavigationBarItem(
            //   activeIcon: Icon(FontAwesomeIcons.angleUp),
            //   icon: Icon(Icons.search),
            //   title: Text(
            //     'Search Element',
            //     style: TextStyle(
            //       fontWeight: FontWeight.normal,
            //     ),
            //   ),
            // ),
            BottomNavigationBarItem(
              activeIcon: Icon(FontAwesomeIcons.angleUp),
              icon: Icon(Icons.more_horiz),
              // ignore: deprecated_member_use
              title: Text(
                'More',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        elementName.length,
        (index) {
          return Center(
            child: ElementNameorID(
              eName: elementName[index],
              eID: elementID[index],
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text(
                            '${elementName[index]}',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        body: ListView(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                'images/${elementName[index].toString()}.jpg',
                              ),
                              radius: 60,
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Card(
                              margin: EdgeInsets.only(
                                top: 10.0,
                                bottom: 20.0,
                                left: 10,
                                right: 10,
                              ),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  '${elementID[index].toString()}',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Name of the Element: ${elementID[index].toString()}',
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  'E',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Electrons: ${electrons[index].toString()}',
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  'P',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Protons: ${protons[index].toString()}',
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  'N',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Neutrons: ${neutrons[index].toString()}',
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  'Z',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Atomic Number: ${z[index].toString()}',
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  'A',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Atomic Mass: ${aMass[index].toString()} amu',
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  'Ve',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Valance Electron: ${valenceElectron[index].toString()}',
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  'Ec',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Electronic Configutation: ${eC[index].toString()}',
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  'NoE',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Nature of Element: ${natEle[index].toString()}',
                                ),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(10.0),
                              elevation: 6,
                              child: ListTile(
                                leading: Text(
                                  'NoI',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: Text(
                                  'Nature of Ion: ${natIon[index].toString()}',
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
