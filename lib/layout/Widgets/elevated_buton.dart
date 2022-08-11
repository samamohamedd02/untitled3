import 'package:flutter/material.dart';

class Elevatedbuton extends StatelessWidget {
  String txt;
   Elevatedbuton({required this.txt,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          txt,
          style: Theme.of(context).textTheme.headline1,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orange[700]),
        ));
  }
}
