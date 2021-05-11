import 'package:disfruta/pages/tabs/cart_tab.dart';
import 'package:disfruta/pages/tabs/favorites_tab.dart';
import 'package:disfruta/pages/tabs/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
              activeColor: Color(0xff6D05E8),
              backgroundColor: Colors.white24,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home)),
                BottomNavigationBarItem(icon: Icon(Icons.favorite)),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart)),
                BottomNavigationBarItem(icon: Icon(Icons.person)),
              ]),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTab(),
                );
                break;
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => FavoritesTab(),
                );
                break;
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => CartTab(),
                );
                break;
              case 3:
                return CupertinoTabView(
                  builder: (BuildContext context) => FavoritesTab(),
                );
                break;
            }
          }),
    );
  }
}
