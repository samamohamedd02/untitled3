import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          const CircleAvatar(
            backgroundColor: Colors.blueGrey,
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                " Profile",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                " Zakhar Palazink",
                style: TextStyle(fontSize: 15, color: Colors.black26),
              ),
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          const Icon(
            Icons.light,
            color: Colors.black26,
            size: 30,
          ),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          const Icon(
            Icons.more_vert,
            color: Colors.black26,
            size: 27,
          )
        ]),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              width: 500,
              child: Divider(
                color: Colors.black26,
                height: 5,
                thickness: .1,
                indent: 0,
                endIndent: 0,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Personal discount",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your 5% discount is valid in the OZ app.To use it,show the screen to the selier.",
                    style: TextStyle(fontSize: 15, color: Colors.black26),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 500,
              child: Divider(
                color: Colors.black26,
                height: 5,
                thickness: .1,
                indent: 0,
                endIndent: 0,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Your discount is 5%",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.orange[700]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: QrImage(
                data: "1234567890",
                version: QrVersions.auto,
                size: 160.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "14426536021",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black26,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
