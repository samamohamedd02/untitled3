import 'package:flutter/material.dart';
import 'package:untitled3/App%20body/basket.dart';
import 'package:untitled3/App%20body/profile.dart';

import 'home_screen.dart';
import 'profile.dart';
import 'search.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int _currentIndex = 0;
  List items = [
    const HomeScreen(),
    const Search(),
    Basket(),
    const Scaffold(
      body: Center(
        child: Text('favorites'),
      ),
    ),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items.elementAt(_currentIndex),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height / 14,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
          showUnselectedLabels: true,
          iconSize: 28,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Main ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Basket',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
