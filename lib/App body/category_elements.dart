import 'package:flutter/material.dart';
import 'home_screen_elements.dart';

class BooksSection extends StatelessWidget {
  const BooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'Psychology',
      'Bines-literature',
      'Children\'s literatures',
      'Artistic',
      'Non-fiction',
      'Educational',
      'Comics',
      'Self development',
      'History',
      'Cooking',
      'Medicine',
      'Foreign language',
      'Foreign language',
      'Foreign language',
      'Foreign language',
    ];
    List<String> images = [];
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
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                          const Text(
                            'Books',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.menu)),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: LinearGradient(
                                    stops: const [
                                      0.3,
                                      1
                                    ],
                                    colors: [
                                      Colors.black.withOpacity(0.5),
                                      Colors.white.withOpacity(0)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                              ),
                            ),
                            Container(
                              child: const Text(
                                'Blind date with a book 2022',
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
                                    'assets/images/another_images/book_library.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      const SizedBox(height: 20.0),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: titles.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.0,
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (BuildContext context, index) =>
                            buildCustomGridView(
                          // images[index],
                          titles[index],
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

  buildCustomGridView(title) {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                title,
                softWrap: true,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            // Expanded(
            //   child: Center(
            //     child: Image.asset(
            //       imgName,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class ElectronicsSection extends StatelessWidget {
  const ElectronicsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MealSection extends StatelessWidget {
  const MealSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
