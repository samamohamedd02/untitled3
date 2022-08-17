import 'package:flutter/material.dart';

import 'home_screen_elements.dart';

class ElectronicsSection extends StatelessWidget {
  const ElectronicsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/electronics_images/wrist.png',
      'assets/images/electronics_images/accessories.png',
      'assets/images/electronics_images/kitchen.png',
      'assets/images/electronics_images/headphone.jpg',
      'assets/images/electronics_images/pc.jpg',
      'assets/images/electronics_images/charger.jpg',
    ];
    List<String> titles = [
      'Wrist gadgets',
      'Accessories',
      'Home appliances',
      'Headphones ',
      'Computer peripherals',
      'Portable chargers'
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
                                'Electronics',
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
                                'Make our life better',
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
                                    'assets/images/electronics_images/electronics.jpg'),
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
                                images[index], titles[index], context),
                      ),
                      const SizedBox(height: 20.0),
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
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                LastElement(
                                    'assets/images/electronics_images/earphone.png',
                                    'USB Type-C Earbuds in-Ear Stereo Bass',
                                    'Foeses',
                                    2),
                                SizedBox(width: 15.0),
                                LastElement(
                                    'assets/images/electronics_images/smartwatch.jpg',
                                    'Oraimo curved Osw 16 smart watch',
                                    'Oraimo',
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
          height: MediaQuery.of(context).size.height * 0.12,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset(
              imgName,
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
