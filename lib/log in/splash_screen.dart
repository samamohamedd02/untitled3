import 'package:flutter/material.dart';
import 'package:untitled3/log in/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 100,
              height: MediaQuery.of(context).size.height / 9,
              decoration: BoxDecoration(
                color: Colors.orange[700],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  "OZ",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            Text(
              "Shopping is a joy",
              style: TextStyle(fontSize: 18, color: Colors.orange[700]),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            const CircularProgressIndicator(
              color: Colors.black,
            )
          ]),
        ),
      ),
    );
  }
}
