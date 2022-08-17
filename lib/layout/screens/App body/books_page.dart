import 'package:flutter/material.dart';
import 'home_screen_elements.dart';

class BooksSection extends StatelessWidget {
  const BooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'Psychology',
      'Bines-literature',
      'Child\'s literatures',
      'Artistic',
      'Non-fiction',
      'Educational',
      'Comics',
      'Self development',
      'History',
      'Cooking',
      'Medicine',
      'Foreign language',
      'Theatre',
      'Mathematics',
      'Programming',
    ];
    List<String> images = [
      'assets/images/books_images/psychology.jpg',
      'assets/images/books_images/bine.jpg',
      'assets/images/books_images/children.jpg',
      'assets/images/books_images/art.jpg',
      'assets/images/books_images/nonfiction.jpg',
      'assets/images/books_images/educational.jpg',
      'assets/images/books_images/comics.jpg',
      'assets/images/books_images/selfdev.jpg',
      'assets/images/books_images/history.jpg',
      'assets/images/books_images/cooking.jpg',
      'assets/images/books_images/medicine.jpg',
      'assets/images/books_images/foreign.jpeg',
      'assets/images/books_images/theatre.jpg',
      'assets/images/books_images/mathematics.jpg',
      'assets/images/books_images/programming.jpg',
    ];
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
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                ),
                              ),
                              const Text(
                                'Books',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          IconButton(
                            padding: const EdgeInsets.all(5.0),
                            onPressed: () {},
                            icon: Image.asset(
                                'assets/images/icons_images/hFilter.png'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
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
                                  30.0, 35.0, 0.0, 0.0),
                            ),
                          ],
                        ),
                        height: MediaQuery.of(context).size.height / 7,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/books_images/book_library.jpg'),
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
                          childAspectRatio: 0.9,
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (BuildContext context, index) =>
                            buildCustomGridView(
                          images[index],
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

  buildCustomGridView(imgName, title) {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 8.0, 0.0, 10.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                imgName,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
