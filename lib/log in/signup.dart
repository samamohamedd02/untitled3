import 'package:flutter/material.dart';
import 'package:untitled3/App%20body/profile.dart';
import 'package:untitled3/log%20in/login.dart';
import 'package:url_launcher/url_launcher.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool vasible = true;
  var url1 = "https://www.facebook.com/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up ",
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
              height: 13,
            ),
            m1Container(context, 'Phone number'),
            const SizedBox(
              height: 13,
            ),
            Container(
              width: 370,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0)),
                  hintText: '+375 29 123 45 67',
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            m1Container(context, 'Password'),
            const SizedBox(
              height: 13,
            ),
            SizedBox(
              width: 370,
              child: TextField(
                obscureText: vasible,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(8.0)),
                    hintText: 'Enter Password',
                    hoverColor: Colors.deepOrange,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          vasible = !vasible;
                        });
                      },
                      icon: Icon(
                          vasible ? Icons.visibility_off : Icons.visibility),
                    )),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 370,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrange),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: const Text(
                "By signing up,You agree to our Privacy Policy and Tearms",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black26,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              child: Row(
                children: const [
                  Expanded(child: Divider(color: Colors.black26)),
                  Text(
                    "  Or continue with  ",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Divider(color: Colors.black26))
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (() {
                      setState(() async {
                        await launch(url1);
                      });
                    }),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.facebook,
                        size: 50,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
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
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account already?",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const MyHomePage();
                        }));
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container m1Container(BuildContext context, String type) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 250, 0),
      child: Text(
        type == 'Phone number' ? 'Phone number' : 'Password',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
