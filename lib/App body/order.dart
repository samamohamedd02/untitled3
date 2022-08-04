import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
            width: 40,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                    child: const Text(
                      "My orders",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ],
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
              c5("1 item", "\$ 14", ":10", "Order N 123-44-66-77"),
              const SizedBox(
                height: 20,
              ),
              c5("3 item", "\$ 27", ":18", "Order N 111-22-88-90")
            ],
          ),
        ),
      ),
    );
  }

  Center c5(String r, String m, String n, String b) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.fromLTRB(0, 0, 100, 0),
        height: 150,
        width: 300,
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
                  width: 80,
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
      ),
    );
  }
}
