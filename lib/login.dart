import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign in to Oz",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
       child:Column(
        children: [
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
            margin: const EdgeInsets.fromLTRB(0, 10, 350, 10),
            child: const Text(
              "Password",
              style: TextStyle(fontSize: 20, color: Colors.black26),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              width: 470,
              child: TextField(
                obscureText: pass,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        pass = !pass;
                      });
                    },
                    icon: Icon(pass ? Icons.visibility : Icons.visibility_off),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Colors.black26),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  hintText: "Enter password ",
                ),
                keyboardType: TextInputType.visiblePassword,
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
              color: Colors.deepOrange,
              width: 470,
              height: 35,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                ),
                onPressed: () {},
                child: const Text(
                  "sign in",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: TextButton(
              onPressed: () {},
              child: const Text("Recover Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.deepOrange)),
            ),
          ),
          const SizedBox(
            width: 150,
            child: Divider(
              color: Colors.deepOrange,
              height: 5,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
          ),
        ],
      ),),
    );
  }
}
