import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  Choose({Key? key}) : super(key: key);

  @override
  State<Choose> createState() => _nameState();
}

class _nameState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 20),
              // height: 250,
              child: CircleAvatar(
                  radius: 170,
                  backgroundColor: Colors.green[100],
                  backgroundImage: AssetImage("images/easy.jpg"))),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text("Choose Best Doctors",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40, right: 40, bottom: 10),
                  child: Text(
                    "Contrary to popular belief, Lorem lpsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                    style: TextStyle(color: Colors.grey[600]),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 160, vertical: 15),
                primary: Color.fromARGB(255, 158, 43, 43),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              Navigator.of(context).pushNamed("start");
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            onTap: () {
              Navigator.of(context).pushNamed("start");
            },
          ),
        ],
      ),
    );
  }
}
