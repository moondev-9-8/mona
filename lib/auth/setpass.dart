import 'package:flutter/material.dart';

class SetPass extends StatefulWidget {
  SetPass({Key? key}) : super(key: key);

  @override
  State<SetPass> createState() => _nameState();
}

class _nameState extends State<SetPass> {
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
                padding: EdgeInsets.only(top: 80, bottom: 20, left: 20),
                child: Text(
                  "Set Password",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "to sign in to your accout again please set a new password that you can remmeber well.",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Form(
                      child: Column(children: [
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text("New password"),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text("confirm new password"),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ]))),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                      primary: Color.fromARGB(255, 158, 43, 43),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("signin");
                  },
                  child: Text(
                    "Done",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ]));
  }
}
