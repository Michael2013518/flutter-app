import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //pageSnapping: false,
      //reverse: true,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "One",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white
              ),
          ),
        ),
        Container(
          color: Colors.grey[600],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "Two",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white
              ),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "Three",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white
              ),
          ),
        )
      ]
      );
  }
}