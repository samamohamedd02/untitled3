import 'package:animated_dashed_circle/animated_dashed_circle.dart';
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
            SliverAppBar(// Custom App Bar.
              expandedHeight: MediaQuery.of(context).size.height / 8,
              backgroundColor: Colors.orange[700],
              flexibleSpace: buildCustomAppBar(context),
            ),
            SliverList(
              delegate: SliverChildListDelegate(// Body Elements.
                [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildFirstElement(context),
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
                        buildCustomStories(context),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Stories',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(width: 15),
                            Icon(Icons.arrow_forward_ios),
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
    );
  }

  Container buildCustomStories(BuildContext context) {
    return Container(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 8,
                        child: ListView.separated(
                            itemBuilder: (context, index) =>
                                const CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  radius: 50,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundImage:
                                        AssetImage('assets/images/face.jpg'),
                                  ),
                                ),
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const VerticalDivider(
                                      width: 10,
                                      color: Colors.white,
                                    )),
                      );
  }

  Container buildFirstElement(BuildContext context) {
    return Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 7,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.5,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/trees.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    0.0005),
                            Column(
                              children: [
                                const Text(
                                  '50',
                                  style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const Text(
                                  'Occasion',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 50,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.0),
                                    color: Colors.white,
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width / 5,
                                  height:
                                      MediaQuery.of(context).size.height / 34,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
  }

  //Working on building Custom Animated Stories.
  ListView customAnimatedStories() {
    return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
        child: AnimatedDashedCircle().show(
          image: const AssetImage('assets/images/face.jpg'),
          duration: const Duration(seconds: 5),
          dashSize: 2,
          autoPlay: false,
          color: Colors.orange,
          borderWidth: 6,
        ),
        onTap: () {
          AnimatedDashedCircle()
              .playCircle(type: AnimatedionDashedCircleType.forward);
        },
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) =>
          const VerticalDivider(
        width: 20,
        color: Colors.white,
      ),
    );
  }

  Padding buildCustomAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.white),
          width: MediaQuery.of(context).size.width * 0.92,
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
              prefixIcon: Icon(Icons.search, color: Colors.grey, size: 28),
              suffixIcon: Icon(Icons.qr_code_scanner_outlined,
                  color: Colors.grey, size: 28),
            ),
          ),
        ),
      ),
    );
  }
}
