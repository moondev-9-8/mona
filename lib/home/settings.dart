import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _nameState();
}

class _nameState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          toolbarHeight: 85,
          title: Container(
            padding: EdgeInsets.only(top: 40, left: 40, bottom: 20),
            child: Text(
              "Settings",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Payment method",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("");
                    },
                  ),
                ),
                SizedBox(width: 190),
                Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "QR Code",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("");
                    },
                  ),
                ),
                SizedBox(width: 250),
                Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Change Password",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(" ");
                    },
                  ),
                ),
                SizedBox(width: 180),
                Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Change language",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(" ");
                    },
                  ),
                ),
                SizedBox(width: 190),
                Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("");
                    },
                  ),
                ),
                SizedBox(width: 240),
                Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(" ");
                    },
                  ),
                ),
                SizedBox(width: 170),
                Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed(" ");
                    },
                  ),
                ),
                SizedBox(width: 250),
                Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                  primary: Color.fromARGB(255, 158, 43, 43),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("");
              },
              child: Text(
                "Log out",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ])
        ]));
  }
}
