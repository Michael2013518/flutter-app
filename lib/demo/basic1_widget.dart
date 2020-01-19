import 'package:flutter/material.dart';

 class Basic1Widget extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          //image: AssetImage('lib/assets/images/news1.jpeg'),
          image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter,
          //repeat: ImageRepeat.repeatX,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
           Colors.indigoAccent[400].withOpacity(0.5),
           BlendMode.hardLight
            )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //主轴对齐居中
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            //color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(24.0),
            margin: EdgeInsets.all(8.0),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 4,
                style: BorderStyle.solid
              ),
              //borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 17.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 20.0,
                  spreadRadius: -9.0
                )
              ]
              ,
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0)
              //   ],
              //   ),
                gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
                )
              ),
          )
        ],
      ),
    );
  }
 }