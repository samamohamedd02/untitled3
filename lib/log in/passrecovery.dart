import 'package:flutter/material.dart';
import 'package:untitled3/log in/verifycode.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "password  Recovery                   ",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: const Text(
                "Don't worry!It happens.Please enter the phone number associated with your account.",
                style: TextStyle(fontSize: 17, color: Colors.black54),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 310, 10),
              child: const Text(
                "phone number",
                style: TextStyle(fontSize: 20, color: Colors.black26),
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                width: 470,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black26),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: "+375 29 123 45 67 ",
                  ),
                  keyboardType: TextInputType.phone,
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                color: Colors.deepOrange,
                width: 470,
                height: 35,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrange),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Verify();
                    }));
                  },
                  child: Text(
                    "Recover password",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
