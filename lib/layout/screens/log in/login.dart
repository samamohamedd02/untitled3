import 'package:flutter/material.dart';
import 'package:untitled3/layout/screens/log%20in/passrecovery.dart';
import 'package:untitled3/layout/screens/log%20in/signup.dart';

import 'package:url_launcher/url_launcher.dart';

import '../App body/bottom_nav_bar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool pass = true;
  var url = "https://www.facebook.com/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Sign in to Oz",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Phone number",
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    width: 470,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          hintText: "+375 29 123 45 67 ",
                          hintStyle: const TextStyle(color: Colors.black26)),
                      keyboardType: TextInputType.phone,
                    )),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: const Text(
                    "Password",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                            borderSide: const BorderSide(
                                width: 2, color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          hintText: "Enter password ",
                          hintStyle: const TextStyle(color: Colors.black26)),
                      keyboardType: TextInputType.visiblePassword,
                    )),
                const SizedBox(height: 25),
                Center(
                  child: MaterialButton(
                    height: MediaQuery.of(context).size.height / 13,
                    child: const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Sign in',
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
                        return const BotNavBar();
                      }));
                    },
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Myhome();
                        }));
                      },
                      child: Text("Recover Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.orange[700])),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 150,
                    child: Divider(
                      color: Colors.orange[700],
                      height: 5,
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                    ),
                  ),
                ),
                Container(
                  width: 470,
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Row(children: const <Widget>[
                    Expanded(child: Divider(color: Colors.black26)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.black26, fontSize: 16),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.black26)),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Image.asset(
                          "assets/images/apple.jpg",
                        ),
                      ),
                      CircleAvatar(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Image.asset(
                          "assets/images/google.png",
                          width: 50,
                        ),
                      ),
                      GestureDetector(
                        onTap: (() {
                          setState(() async {
                            await launchUrl(Uri.parse(url));
                          });
                        }),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.facebook,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Haven't an account ?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black26),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Signup();
                          }));
                        },
                        child: Text("Sign up ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.orange[700])),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
