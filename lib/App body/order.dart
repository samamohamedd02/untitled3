import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          const CircleAvatar(
            backgroundColor: Colors.blueGrey,
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                " Profile",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                " Zakhar Palazink",
                style: TextStyle(fontSize: 15, color: Colors.black26),
              ),
            ],
          ),
          const SizedBox(
            width: 80,
          ),
          const Icon(
            Icons.light,
            color: Colors.black26,
            size: 30,
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          const Icon(
            Icons.more_vert,
            color: Colors.black26,
            size: 27,
          )
        ]),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                width: 500,
                child: Divider(
                  color: Colors.black26,
                  height: 5,
                  thickness: .5,
                  indent: 0,
                  endIndent: 0,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height / 10,
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
              label: 'Favorites',
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
