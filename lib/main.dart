import 'package:flutter/material.dart';
import './demo/draw_demo.dart';
import './demo/bottom_navigation_bar_widget.dart';
import './demo/listviewitem.dart';
//import './demo//basic_widget.dart';
import './demo/basic1_widget.dart';
import './demo/layout_widget.dart';
import './demo/view_demo.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        highlightColor: Color.fromRGBO(255, 255, 255, 0.7),
        splashColor: Colors.white70,
        primarySwatch: Colors.yellow
      ),
    );
  }
}
class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('MICHAEL CHEUNG'),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('search button is pressed'),
          )
          ],
          elevation: 1.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
          ListViewItem(),
          Basic1Widget(),
          // Icon(Icons.directions_bike, size: 128.0, color: Colors.black26),
          LayoutDemo(),
          ViewDemo()
        ]),
        drawer: DrawDemo(),
        bottomNavigationBar: BottomNavigationBarWidget()
      ),
    );
  }
}