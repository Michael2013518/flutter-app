import 'package:flutter/material.dart';
// import './demo/listviewitem.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('navigration button is pressed'),
          ),
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
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike))
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Icon(Icons.local_florist, size: 128.0, color: Colors.black26),
          Icon(Icons.change_history, size: 128.0, color: Colors.black26),
          Icon(Icons.directions_bike, size: 128.0, color: Colors.black26),
        ],)
      ),
    );
  }
}