import 'package:flutter/material.dart';
import 'package:untitled3/log%20in/signup.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool pass = true;
  var url = "https://www.facebook.com/";
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
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 250, 10),
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
                margin: const EdgeInsets.fromLTRB(0, 10, 290, 10),
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
                        icon: Icon(
                            pass ? Icons.visibility : Icons.visibility_off),
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
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrange),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const Signup();
                          }));
                    },
                    child: Text(
                      "sign in",
                      style:Theme.of(context).textTheme.headline1,
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
              Container(
                width: 470,
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Row(children: const <Widget>[
                  Expanded(child: Divider(color: Colors.black26)),
                  Text(
                    "Or continue with",
                    style: TextStyle(color: Colors.black26, fontSize: 15),
                  ),
                  Expanded(child: Divider(color: Colors.black26)),
                ]),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (() {
                        setState(() async {
                          await launch(url);
                        });
                      }),
                      child: CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Image.asset(
                          "assets/images/face.jpg",
                          width: 50,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Image.asset(
                        "assets/images/apple.jpg",
                        width: 80,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Haven't an account ?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black26),
                    ),
                    Text(
                      "Sing up ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.deepOrange),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
