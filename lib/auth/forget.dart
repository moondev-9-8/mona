import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _nameState();
}

class _nameState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 100, bottom: 20, left: 20),
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Enter the Email associated with your account to reset your password.",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Form(
                      child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Email"),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 140, vertical: 15),
                          primary: Color.fromARGB(255, 158, 43, 43),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("setpass");
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ])))
            ]));
  }
}
