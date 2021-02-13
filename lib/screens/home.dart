import 'package:flutter/material.dart';

import '../content/elements.dart';
import '../resource/element.dart';

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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
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
