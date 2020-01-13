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
              title: Text('浏览'),
              icon: Icon(Icons.explore)
            ),
            BottomNavigationBarItem(
              title: Text('历史'),
              icon: Icon(Icons.history)
            ),
            BottomNavigationBarItem(
              title: Text('列表'),
              icon: Icon(Icons.list)
            ),
            BottomNavigationBarItem(
              title: Text('我的'),
              icon: Icon(Icons.person)
            )
          ],
        );
  }
}