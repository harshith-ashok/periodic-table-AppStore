import 'package:flutter/material.dart';

class ElementNameorID extends StatelessWidget {
  final String eID;
  final String eName;
  final Function onPress;

  const ElementNameorID({Key key, this.eID, this.eName, this.onPress})
      : super(key: key);

  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(15),
      child: ListTile(
        leading: Text(
          '$eID',
          style: TextStyle(
            //fontFamily: 'Raleway',
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        ),
        title: Text(
          '$eName',
          style: TextStyle(
            //fontFamily: 'Raleway',
            fontSize: 25,
          ),
        ),
        trailing: IconButton(
          splashRadius: 0.1,
          icon: Icon(
            Icons.navigate_next,
            color: Colors.black,
          ),
          iconSize: 40,
          onPressed: () {},
        ),
        onTap: onPress,
      ),
    );
  }
}
