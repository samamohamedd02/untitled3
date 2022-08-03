import 'package:flutter/material.dart';
import 'package:untitled3/App body/order.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              txtField("Menu Sections"),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Icon(
                      Icons.web_outlined,
                      size: 25,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "My Orders",
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 220,
                  ),
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Order()),
                      );
                    }),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black26,
                    ),
                  )
                ]),
              ),
              c2(),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Icon(
                      Icons.discount_sharp,
                      size: 25,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Personal discount",
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 155,
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black26,
                    ),
                  )
                ]),
              ),
              c2(),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Icon(
                      Icons.where_to_vote_rounded,
                      size: 25,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Delivery Addresses",
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 146,
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black26,
                    ),
                  )
                ]),
              ),
              c2(),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Icon(
                      Icons.web_asset,
                      size: 25,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Payment methods",
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 155,
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black26,
                    ),
                  )
                ]),
              ),
              c2(),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Icon(
                      Icons.reorder_sharp,
                      size: 25,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Order history",
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black26,
                    ),
                  )
                ]),
              ),
              c2(),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Icon(
                      Icons.settings,
                      size: 25,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "My Orders",
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 220,
                  ),
                  GestureDetector(
                    onTap: (() {}),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black26,
                    ),
                  )
                ]),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: txtField("Help")),
              c1("Delivery", 275),
              c2(),
              c1("Refund", 281),
              c2(),
              c1("payment", 268),
              c2(),
              c1("Support", 274),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: txtField("")),
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

  SizedBox txtField(String? hint) {
    return SizedBox(
      height: 44,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: const Color(0xFFCFC9C4),
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 18, color: Colors.black26),
        ),
      ),
    );
  }

  Container c1(String text, double s) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      child: Row(children: [
        Text(
          text,
          style: const TextStyle(fontSize: 19, color: Colors.black),
        ),
        SizedBox(
          width: s,
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: Colors.black26,
        ),
      ]),
    );
  }

  Container c2() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      width: 490,
      child: const Divider(
        color: Colors.grey,
        height: 5,
        thickness: .3,
        indent: 0,
        endIndent: 0,
      ),
    );
  }
}
