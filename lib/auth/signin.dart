import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _nameState();
}

class _nameState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 140, bottom: 40, left: 20),
            child: Text(
              "Sign In",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    suffixIcon: Icon(Icons.visibility_off),
                    border: UnderlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 40),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 115),
                        child: Text(
                          "Remember me",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(color: Colors.grey[700]),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("forget");
                        },
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                      primary: Color.fromARGB(255, 158, 43, 43),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("navi");
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Text(
                    "Continue with Phone Number",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                Text("OR"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Text(
                        "f",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      //backgroundImage: AssetImage("images/"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.red,
                      child: Text(
                        "G",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      //backgroundImage: AssetImage("images/"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,

                      //backgroundImage: AssetImage("images/"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a Member? ",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    InkWell(
                      child: Text(
                        " Sign up",
                        style: TextStyle(
                            color: Color.fromARGB(255, 158, 43, 43),
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("signup");
                      },
                    )
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
