import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> storiesImages = [
      'assets/images/stories_images/child.jpg',
      'assets/images/stories_images/painting.jpg',
      'assets/images/stories_images/soon.jpg',
      'assets/images/stories_images/cosmetics.jpg',
      'assets/images/stories_images/child.jpg',
      'assets/images/stories_images/cosmetics.jpg',
    ];
    List<String> storiesTexts = [
      'Children under -40%',
      'OZ painting up to -40%',
      'On the road',
      'Cosmetics up to -40%',
      'Children under -40%',
      'Cosmetics up to -40%',
    ];

    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 5.0),
      height: MediaQuery.of(context).size.height / 7,
      child: ListView.separated(
        itemBuilder: (context, index) => Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 38,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(storiesImages[index]),
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  Text(
                    storiesTexts[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        scrollDirection: Axis.horizontal,
        itemCount: storiesImages.length,
        separatorBuilder: (BuildContext context, int index) =>
            const VerticalDivider(
          width: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}

class FirstElement extends StatelessWidget {
  const FirstElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      height: MediaQuery.of(context).size.height / 7,
      decoration: BoxDecoration(
          color: Colors.orange[600], borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/another_images/trees.png'),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.0005),
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
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width / 5,
                height: MediaQuery.of(context).size.height / 34,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.white),
          width: MediaQuery.of(context).size.width * 0.92,
          child: TextField(
            onTap: () {},
            decoration: const InputDecoration(
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

//Working on building Custom Animated Stories.
//class AnimatedStories extends StatelessWidget {
// const AnimatedStories({Key? key}) : super(key: key);

// @override
//Widget build(BuildContext context) {
//return ListView.separated(
//itemBuilder: (context, index) => GestureDetector(
// child: AnimatedDashedCircle().show(
// image: const AssetImage('assets/images/face.jpg'),
//duration: const Duration(seconds: 5),
//dashSize: 2,
//autoPlay: false,
//color: Colors.orange,
//borderWidth: 6,
//),
//onTap: () {
//AnimatedDashedCircle()
//  .playCircle(type: AnimatedDashedCircleType.forward);
//  },
//),
//scrollDirection: Axis.horizontal,
//itemCount: 10,
//separatorBuilder: (BuildContext context, int index) =>
//  const VerticalDivider(
//width: 20,
//color: Colors.white,
//),
//);
//}
//}

class LastElement extends StatelessWidget {
  final String img;
  final int number;
  final String title;
  final String writer;

  const LastElement(this.img, this.title, this.writer, this.number, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(img, width: 180, height: number == 1 ? 200 : 185),
              number == 1
                  ? Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(2.0)),
                child: const Text(
                  ' -20%',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                width: MediaQuery.of(context).size.width / 8,
                height: MediaQuery.of(context).size.height / 34,
              )
                  : Container(),
            ],
          ),
          const SizedBox(height: 3.0),
          Wrap(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 3.0),
                  Text(
                    writer,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 3.0),
          Row(
            children: [
              const Text(
                '5.0',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 5.0),
              Row(
                children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      color: Colors.orange[400],
                      size: 20,
                    )),
              ),
            ],
          ),
          const SizedBox(height: 3.0),
          Row(
            children: const [
              Icon(
                Icons.card_giftcard,
                color: Colors.grey,
                size: 15,
              ),
              SizedBox(width: 5.0),
              Text(
                'Bonuses',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          const SizedBox(height: 3.0),
          Row(
            children: const [
              Text(
                '\$10',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(width: 5.0),
              Text(
                '\$12',
                style: TextStyle(
                    decoration: TextDecoration.lineThrough, color: Colors.grey),
              ),
              SizedBox(width: 5.0),
              Text(
                'In stock',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
