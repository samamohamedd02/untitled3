import 'package:flutter/material.dart';
import 'books_page.dart';
import 'electronics_page.dart';
import 'home_screen_elements.dart';
import 'meals_page.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List pages = [
    const BooksSection(),
    const ElectronicsSection(),
    () {},
    () {},
    () {},
    () {},
    () {},
    () {},
    const MealSection(),
  ];
  List<String> images = [
    'assets/images/icons_images/books.png',
    'assets/images/icons_images/tv.png',
    'assets/images/icons_images/home.png',
    'assets/images/icons_images/baby_carriage.png',
    'assets/images/icons_images/drug.png',
    'assets/images/icons_images/bag.png',
    'assets/images/icons_images/pencil.png',
    'assets/images/icons_images/ball.png',
    'assets/images/icons_images/food.png'
  ];
  List<String> titles = [
    'Books',
    'Electronics',
    'For home',
    'For children',
    'Health',
    'Souvenirs',
    'Stationary',
    'Sports',
    'Meal'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // Custom App Bar.
            expandedHeight: MediaQuery.of(context).size.height / 8,
            backgroundColor: Colors.orange[700],
            flexibleSpace: const CustomAppBar(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              // Body Elements.
              [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Category',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: images.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.0,
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (BuildContext context, index) =>
                            buildCustomGridView(images[index], titles[index],
                                pages[index], index),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: LinearGradient(
                                    stops: const [
                                      0.25,
                                      1
                                    ],
                                    colors: [
                                      Colors.black.withOpacity(0.6),
                                      Colors.white.withOpacity(0)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                              ),
                            ),
                            Container(
                              child: const Text(
                                'Discount on notebooks 10%',
                                softWrap: true,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              width: MediaQuery.of(context).size.width * 0.45,
                              padding: const EdgeInsets.fromLTRB(
                                  30.0, 30.0, 0.0, 0.0),
                            ),
                          ],
                        ),
                        height: MediaQuery.of(context).size.height / 7,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/another_images/notebook2.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      const SizedBox(height: 20),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                LastElement(
                                    'assets/images/another_images/book2.jpg',
                                    'How to win friends and influence people',
                                    'Dale Carnegie',
                                    2),
                                SizedBox(width: 5.0),
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

  buildCustomGridView(String imgName, String title, page, int index) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ),
      ),
      child: Card(
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  imgName,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
