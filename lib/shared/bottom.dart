import 'package:flutter/material.dart';
import 'package:safeherven_app/screens/map.dart';
import 'package:safeherven_app/screens/about.dart';
import 'package:safeherven_app/screens/chat.dart';
import 'package:safeherven_app/screens/home.dart';


class MenuBottom extends StatelessWidget {
  const MenuBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SafeSpotsScreen()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutScreen()),
            );
            break;
        }
      },
      items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Safe Spots',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
        ],
        selectedItemColor: Colors.purple[500],
    );
  }
}