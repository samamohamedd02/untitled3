import 'package:flutter/material.dart';

class Elevatedbuton extends StatelessWidget {
  String txt;
 // Function onpress;
   Elevatedbuton({required this.txt,
     //required this.onpress,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {

        },
        child: Text(
          txt,
          style: Theme.of(context).textTheme.headline1,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orange[700]),
        ));
  }
}
