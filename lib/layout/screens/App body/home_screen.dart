import 'package:flutter/material.dart';
import 'home_screen_elements.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // Custom App Bar.
            automaticallyImplyLeading: false,
            expandedHeight: MediaQuery.of(context).size.height / 8,
            backgroundColor: Colors.orange[700],
            flexibleSpace: const CustomAppBar(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              // Body Elements.
              [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FirstElement(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      const Text(
                        'Stories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      const Stories(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 60,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Books',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(width: 15),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 20.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                LastElement(
                                    'assets/images/another_images/book1.jpg',
                                    'Overnight in Lisbon',
                                    'Erich Maria Remarque',
                                    1),
                                SizedBox(width: 25.0),
                                LastElement(
                                    'assets/images/another_images/book2.jpg',
                                    'How to win friends and influence people',
                                    'Dale Carnegie',
                                    2),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                LastElement(
                                    'assets/images/another_images/book2.jpg',
                                    'How to win friends and influence people',
                                    'Dale Carnegie',
                                    2),
                                SizedBox(width: 25.0),
                                LastElement(
                                    'assets/images/another_images/book1.jpg',
                                    'Overnight in Lisbon',
                                    'Erich Maria Remarque',
                                    1),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
