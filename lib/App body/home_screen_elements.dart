import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:untitled3/App%20body/search_screen.dart';

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
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const StoriesView())),
          child: Wrap(
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

class StoriesView extends StatelessWidget {
  const StoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = StoryController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        centerTitle: true,
        title: const Text(
          'Stories',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: StoryView(
          onComplete: () => Navigator.pop(context),
          storyItems: [
            StoryItem.inlineImage(
                caption: const Text(
                  'A blind date with books',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                url:
                    'https://i.pinimg.com/736x/31/db/70/31db70212a02b2835ab1f397b2b2865f.jpg',
                controller: controller),
            StoryItem.text(
                backgroundColor: Colors.blueGrey,
                title: 'This is my story',
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
          ],
          controller: controller,
          inline: false,
          repeat: false),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 30),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.white),
          width: MediaQuery.of(context).size.width * 0.92,
          child: TextField(
            onTap: () =>
                showSearch(context: context, delegate: CustomSearchDelegate()),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
              prefixIcon: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 28,
                ),
                onPressed: () => showSearch(
                    context: context, delegate: CustomSearchDelegate()),
              ),
              suffixIcon: const Icon(Icons.qr_code_scanner_outlined,
                  color: Colors.grey, size: 28),
            ),
          ),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/another_images/trees.png',
                ),
              ),
            ),
          ),
          Column(
            children: [
              const FittedBox(
                child: Text(
                  '50',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
              const Expanded(
                child: Text(
                  'Rubles',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
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
              SizedBox(
                child: Image.asset(img),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2,
              ),
              number == 1
                  ? Container(
                      margin: const EdgeInsets.only(bottom: 5.0),
                      decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5.0))),
                      child: const Text(
                        '-20%',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      width: MediaQuery.of(context).size.width / 11,
                      height: MediaQuery.of(context).size.height / 50,
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
                          size: 18,
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
