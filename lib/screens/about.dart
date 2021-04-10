import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:share/share.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Text(
              'References:',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Tile(
            content: 'Images',
            subContent: 'https://images-of-elements.com',
            leadingIco: FontAwesomeIcons.image,
          ),
          Tile(
            content: 'Information',
            subContent: 'Chemistry ma\'am,LMOIS',
            leadingIco: FontAwesomeIcons.infoCircle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Text(
              'Find me on:',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Tile(
            content: 'My Website',
            subContent: 'harshithashok.com',
            leadingIco: Icons.web,
          ),
          Tile(
            content: 'YouTube',
            subContent: 'bit.ly/3t8QUDp',
            leadingIco: FontAwesomeIcons.youtube,
          ),
          Tile(
            content: 'Instagram',
            subContent: 'instagram.com/harshith__ashok',
            leadingIco: FontAwesomeIcons.instagram,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '© Copyright Harshith Ashok ',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String content;
  final String subContent;
  final IconData leadingIco;
  final String trailing;

  const Tile({
    Key key,
    this.content,
    this.leadingIco,
    this.trailing,
    this.subContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      elevation: 10,
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          content,
          style: TextStyle(
              //fontFamily: 'Raleway',
              ),
        ),
        subtitle: Text(
          subContent,
          style: TextStyle(
              //fontFamily: 'Raleway',
              ),
        ),
        leading: Icon(
          leadingIco,
          color: Colors.black,
        ),
      ),
    );
  }
}
