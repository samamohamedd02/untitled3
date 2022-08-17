import 'package:flutter/material.dart';

import 'home_screen_elements.dart';

class MealSection extends StatelessWidget {
  const MealSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/meal_images/sweets.jpg',
      'assets/images/meal_images/soda.jpg',
      'assets/images/meal_images/syrup.jpg',
      'assets/images/meal_images/chips.jpg',
      'assets/images/meal_images/tea_coffee.png',
      'assets/images/meal_images/baby_food.jpg',
    ];
    List<String> titles = [
      'Sweets',
      'Drinks & juices',
      'Syrups',
      'Chips',
      'Tea & Coffee',
      'Baby food'
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
                                'Meal',
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
                                      Colors.black.withOpacity(0.6),
                                      Colors.white.withOpacity(0)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                              ),
                            ),
                            Container(
                              child: const Text(
                                'The most delicious, the best',
                                softWrap: true,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              width: MediaQuery.of(context).size.width * 0.5,
                              padding: const EdgeInsets.fromLTRB(
                                  30.0, 35.0, 0.0, 0.0),
                            ),
                          ],
                        ),
                        height: MediaQuery.of(context).size.height / 7,
                        decoration: BoxDecoration(
                            color: Colors.blue[800],
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/meal_images/meal.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      const SizedBox(height: 25.0),
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
                                images[index], titles[index], context),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Filter and Selection Settings',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          IconButton(
                            padding: const EdgeInsets.all(10.0),
                            onPressed: () {},
                            icon: Image.asset(
                                'assets/images/icons_images/vFilter.png'),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 20.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                LastElement(
                                    'assets/images/meal_images/can1.jpg',
                                    'Carbonated drink "Dr.Pepper , Classic"',
                                    'Dr Pepper',
                                    1),
                                SizedBox(width: 15.0),
                                LastElement(
                                    'assets/images/meal_images/can2.png',
                                    'Carbonated drink "Fanta , berries"',
                                    'Fanta',
                                    2),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                LastElement(
                                    'assets/images/meal_images/milka.png',
                                    'Chocolate Milka Leger Combinado',
                                    'Milka',
                                    2),
                                SizedBox(width: 15.0),
                                LastElement(
                                    'assets/images/meal_images/ritter.jpg',
                                    'Ritter Sport Crunchy Roasted Whole Hazel Nuts',
                                    'Ritter Sport',
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

  buildCustomGridView(imgName, title, context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 100,
          child: Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                imgName,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
