import 'package:flutter/material.dart';

class ElementNameorID extends StatelessWidget {
  final String eID;
  final String eName;
  final Function onPress;

  const ElementNameorID({Key key, this.eID, this.eName, this.onPress})
      : super(key: key);

  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      elevation: 10,
      margin: EdgeInsets.all(15),
      child: ListTile(
        leading: Text(
          '$eID',
          style: TextStyle(
            //fontFamily: 'Raleway',
            fontSize: 25,
            fontWeight: FontWeight.w600,
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
