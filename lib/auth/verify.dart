import 'package:flutter/material.dart';

class Verify extends StatefulWidget {
  Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _nameState();
}

class _nameState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verification",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white70,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.only(top: 50, bottom: 10, left: 10),
          child: Text(
            "Enter 4 didit code. We'll text you on",
            style: TextStyle(color: Colors.grey[600], fontSize: 20),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, bottom: 20),
          child: Text(
            "admin@gmail.com",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 158, 43, 43),
            ),
            //textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 94,
              child: TextFormField(
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 94,
              child: TextFormField(
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 94,
              child: TextFormField(
                keyboardType: TextInputType.number,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 94,
              child: TextFormField(
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 50, bottom: 10, left: 20),
          child: Text(
            "Didn't you receive any code?",
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: () {},
            child: Text(
              "Click Resend.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: Color.fromARGB(255, 158, 43, 43)),
            ),
          ),
        )
      ]),
    );
  }
}
