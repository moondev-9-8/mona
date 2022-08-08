import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _nameState();
}

class _nameState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(top: 120, bottom: 50, left: 20),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              )),
          Container(
            padding: EdgeInsets.all(10),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      label: Text("Email"), border: UnderlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      label: Text("Phone"), border: UnderlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      suffixIcon: Icon(Icons.visibility_off),
                      border: UnderlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: " Confirm password",
                      border: UnderlineInputBorder()),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 15, bottom: 40, left: 10, right: 160),
                  child: Text(
                    "Accept terms & conditions",
                    style: TextStyle(color: Colors.grey[700]),
                    textAlign: TextAlign.start,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("profile");
                    },
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                        primary: Color.fromARGB(255, 158, 43, 43),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text("Next")),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already a Member? ",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      InkWell(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 158, 43, 43),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("signin");
                        },
                      )
                    ],
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
