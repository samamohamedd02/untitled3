import 'package:flutter/material.dart';
import 'package:untitled3/layout/screens/log%20in/verifycode.dart';


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
        automaticallyImplyLeading: false,
        title: const Text(
          "Password  recovery               ",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: const Text(
                  "Don't worry!It happens.Please enter the phone number associated with your account.",
                  style: TextStyle(fontSize: 17, color: Colors.black54),
                ),
              ),
              const Text(
                "Phone number",
                style: TextStyle(fontSize: 20, color: Colors.black26),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: MaterialButton(
                  height: MediaQuery.of(context).size.height / 13,
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Recover password',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  color: Colors.orange[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Verify();
                    }));
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
