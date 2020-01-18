import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1/1,
            child:Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
            )
        ],
        ) ,
      );
  }
}
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // children: <Widget>[
        //   IconBadge(Icons.pool),
        //   IconBadge(Icons.beach_access, size: 64),
        //   IconBadge(Icons.airplanemode_active)
        // ]
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              alignment: Alignment(0, -0.5),
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)
              ),
             
            ) ,
          ),
          SizedBox(height: 32.0),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                //borderRadius: BorderRadius.circular(8.0)
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 54, 255, 1.0)
                  ]
                )
              ),
              child: Icon(Icons.brightness_2, color: Colors.white,size: 32.0),
            ) ,
          ),
          Positioned(
            right: 20.0,
            top: 20.0,
            child: Icon(Icons.ac_unit, color: Colors.white,size: 20.0)
            ),
            Positioned(
            right: 25.0,
            bottom: 45.0,
            child: Icon(Icons.ac_unit, color: Colors.white,size: 15.0)
            ),
            Positioned(
            right: 50.0,
            bottom: 20.0,
            child: Icon(Icons.ac_unit, color: Colors.white,size: 20.0)
            ),
            ]
          )
        ],
        ) ,
      );
  }
}
class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}