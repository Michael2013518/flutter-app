import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Michael'.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('zdong2010@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                      image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.yellow[500].withOpacity(0.8), BlendMode.multiply)
                      )
                    ),
                ),
              ListTile(
                title: Text('Messages', textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
          );
  }
}