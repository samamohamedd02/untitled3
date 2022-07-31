import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([]),
          ),
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height / 8,
            backgroundColor: Colors.orange[700],
            flexibleSpace: Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                width: MediaQuery.of(context).size.width * 0.92,
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    prefixIcon:
                        Icon(Icons.search, color: Colors.grey, size: 28),
                    suffixIcon: Icon(Icons.qr_code_scanner_outlined,
                        color: Colors.grey, size: 28),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
