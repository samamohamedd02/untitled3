import 'package:flutter/material.dart';
import 'package:untitled3/log%20in/login.dart';
import 'package:url_launcher/url_launcher.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool visible = true;
  var url1 = "https://www.facebook.com/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Sign Up ",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 13,
              ),
              m1Container(context, 'Phone number'),
              const SizedBox(
                height: 13,
              ),
              SizedBox(
                width: double.infinity,
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
                width: double.infinity,
                child: TextField(
                  obscureText: visible,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0)),
                      hintText: 'Enter Password',
                      hoverColor: Colors.orange[700],
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                        icon: Icon(
                            visible ? Icons.visibility_off : Icons.visibility),
                      )),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()));
                    },
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange[700]),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'By Signing up, you agree to our ',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black26,
                    ),
                    children: [
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.orange[700],
                        ),
                      ),
                      const TextSpan(
                        text: ' and ',
                      ),
                      TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.orange[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                child: Row(
                  children: const [
                    Expanded(child: Divider(color: Colors.black26)),
                    Text(
                      "   Or continue with   ",
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
              Row(
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
                        await launchUrl(Uri.parse(url1));
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
              const SizedBox(
                height: 20,
              ),
              Row(
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
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.orange[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Text m1Container(BuildContext context, String type) {
    return Text(
      type == 'Phone number' ? 'Phone number' : 'Password',
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
