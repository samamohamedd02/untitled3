import 'package:flutter/material.dart';
import 'package:untitled3/Widgets/elevated_buton.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Verify Code",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
              child: Text(
                "Enter your verification code from your phone number that we've sent.",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                m1Container(context),
                const SizedBox(
                  width: 17,
                ),
                m1Container(context),
                const SizedBox(
                  width: 17,
                ),
                m1Container(context),
                const SizedBox(
                  width: 17,
                ),
                m1Container(context)
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 370,
              height: 50,
              child: Elevatedbuton(txt: "Verify"),
            )
          ],
        ),
      ),
    );
  }

  Container m1Container(BuildContext context) {
    return Container(
      width: 70,
      child: TextField(
        maxLength: 1,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.black26),
              borderRadius: BorderRadius.circular(20.0)),
        ),
        keyboardType: TextInputType.phone,
      ),
    );
  }
}

