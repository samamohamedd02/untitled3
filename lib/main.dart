import 'package:flutter/material.dart';
import 'package:untitled3/log%20in/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.white,
        textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
            headline2: TextStyle(fontSize: 20, color: Colors.black26),
        headline3: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold)),

      ),
      home: const MyHomePage(),
    );
  }
}
