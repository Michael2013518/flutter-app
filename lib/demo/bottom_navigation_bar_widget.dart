import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;
  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              title: Text('Explore'),
              icon: Icon(Icons.explore)
            ),
            BottomNavigationBarItem(
              title: Text('History'),
              icon: Icon(Icons.history)
            ),
            BottomNavigationBarItem(
              title: Text('List'),
              icon: Icon(Icons.list)
            ),
            BottomNavigationBarItem(
              title: Text('My'),
              icon: Icon(Icons.person)
            )
          ],
        );
  }
}