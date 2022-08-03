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
            children: [
              const SizedBox(
                width: 500,
                child: Divider(
                  color: Colors.black26,
                  height: 5,
                  thickness: .1,
                  indent: 0,
                  endIndent: 0,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 350, 0),
                child: const Text(
                  "My orders",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      margin: const EdgeInsets.fromLTRB(28, 0, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        color: Colors.deepOrange,
                      ),
                      child: Text(
                        "Active",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Cancelled",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("Unfinished",
                        style: Theme.of(context).textTheme.headline2),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: 500,
                child: const Divider(
                  color: Colors.black26,
                  height: 5,
                  thickness: .1,
                  indent: 0,
                  endIndent: 0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              c5("1 item", " 14", ":10", "Order N 123-44-66-77"),
              const SizedBox(
                height: 20,
              ),
              c5("3 item", "27", ":18", "Order N 111-22-88-90")
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

  Container c5(String r, String m, String n, String b) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.fromLTRB(0, 0, 80, 0),
      height: 150,
      width: 370,
      decoration: BoxDecoration(
        color: const Color(0xFFCFC9C4),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            b,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                r,
                style: const TextStyle(fontSize: 15, color: Colors.black26),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                m,
                style: const TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text(
                "Delivery data ",
                style: TextStyle(fontSize: 15, color: Colors.black26),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Friday june 3rd",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text(
                "Bonus",
                style: TextStyle(fontSize: 15, color: Colors.black26),
              ),
              Text(
                n,
                style: const TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text(
                "Paid for ",
                style: TextStyle(fontSize: 15, color: Colors.black26),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add_task,
                color: Colors.green,
                size: 20,
              ),
              SizedBox(
                width: 200,
              ),
              Text(
                "Details",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
