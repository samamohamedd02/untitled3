import 'package:flutter/material.dart';


class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basket",style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold,),),backgroundColor: Colors.deepOrange,),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20,),
             Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [const Text("Your order : 2 items",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),const SizedBox(width: 30,),
               Text("Your discount is &2",style: Theme.of(context).textTheme.headline2,)],

             ),
            const SizedBox(height: 15,),
              m1Divider(),
              Row(
                children: [
                Image.asset("assets/images/p4.jpg",scale:2,),
                  Column(
                    children: [
                      Text("Overnight in Lisbon",style: Theme.of(context).textTheme.headline3,),
                      Text("Erich Maria Remarque",style: Theme.of(context).textTheme.headline2,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: const [Icon(Icons.web_sharp,color:Colors.grey,),SizedBox(width: 10,),Text("15 bonuses",style: TextStyle(color: Colors.grey),)],
                      ),
                      Row(
                        children: [
                          Text("10",style:Theme.of(context).textTheme.headline3,),const SizedBox(width: 10,),
                        const Text("12",style: TextStyle( decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 17),),const SizedBox(width: 10,),
                         const Text("In stock",style: TextStyle(color: Colors.grey,fontSize: 17),)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              m1Divider(),
              m2Container(),
              m1Divider(),
              Row(
                children: [
                  Image.asset("assets/images/p5.jpg",scale:1.8,),
                  Column(
                    children: [
                      Text("Overnight in Lisbon",style: Theme.of(context).textTheme.headline3,),
                      Text("Dale Carnegie",style: Theme.of(context).textTheme.headline2,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: const [Icon(Icons.web_sharp,color:Colors.grey,),SizedBox(width: 18,),Text("15 bonuses",style: TextStyle(color: Colors.grey),)],
                      ),
                      Row(
                        children: [
                          Text("14",style:Theme.of(context).textTheme.headline3,),const SizedBox(width: 10,),
                          const Text("In stock",style: TextStyle(color: Colors.grey,fontSize: 17),)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              m1Divider(),
              m2Container(),
              const SizedBox(height: 30,),
              Text("Delivery will be tomorrow",style: Theme.of(context).textTheme.headline2,),
            const  SizedBox(height: 30,),
            SizedBox(
              width: 370,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Place an order",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrange),
                  )),
            ),
            const   SizedBox(height: 30,)



            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height / 10,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
          showUnselectedLabels: true,
          iconSize: 28,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Main ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Basket',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),

    );
  }
  Divider m1Divider(){
  return const  Divider(
      color: Colors.black26,
      height: 20,
      thickness: 1,
      endIndent: 0,
    );
  }
  Row m2Container(){
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.favorite_border,size: 35,),
        SizedBox(width: 5,),
        Text("To favourite"),
        SizedBox(width: 40,),
        Icon( Icons.delete_outline,size: 35,),
        SizedBox(width: 5,),
        Text("Delete"),
        SizedBox(width: 40,),
        Text("1 pc."),
        SizedBox(width: 40,),
         Icon(  Icons.double_arrow,size: 35,)

      ],
    );
  }
}
