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
          Text(
            '\t\t\t\t\t\t\t\tReferences:',
            style: TextStyle(fontSize: 20),
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
          Text(
            '\t\t\t\t\t\t\tFind me on:',
            style: TextStyle(fontSize: 20),
          ),
          Tile(
            content: 'My Website',
            subContent: 'harshithashok.com',
            leadingIco: Icons.web,
          ),
          Tile(
            content: 'YouTube',
            subContent: 'youtube.com/harshith-ashok',
            leadingIco: FontAwesomeIcons.youtube,
          ),
          Tile(
            content: 'Twitter',
            subContent: 'twitter.com/_harshith_ashok',
            leadingIco: FontAwesomeIcons.twitter,
          ),
          Tile(
            content: 'Instagram',
            subContent: 'instagram.com/harshith__ashok',
            leadingIco: FontAwesomeIcons.instagram,
          ),
          Text(
            '\n\n \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t© Copyright Harshith Ashok 2020',
            style: TextStyle(fontSize: 15),
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
