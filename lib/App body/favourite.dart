import 'package:flutter/material.dart';
import 'home_screen_elements.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Favourite",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange[700],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
            const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 20.0),
            child: Column(
              children: [
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
                          SizedBox(width: 5.0),
                          LastElement(
                              'assets/images/another_images/book2.jpg',
                              'How to win friends and influence people',
                              'Dale Carnegie',
                              2),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Text(
                            'Electronics',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          LastElement(
                              'assets/images/electronics_images/mouse.jpg',
                              'Jet.A OM-U55 led mouse',
                              'Jet.A',
                              1),
                          SizedBox(width: 15.0),
                          LastElement(
                              'assets/images/electronics_images/speakers.jpg',
                              'Dialog speakers (at. AST-22 UP;black)',
                              'Dialog',
                              2),
                        ],
                      ),



                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      ),

    );
  }
}
