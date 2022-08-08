import 'package:flutter/material.dart';

class HealthBar extends StatefulWidget {
  HealthBar({Key? key}) : super(key: key);

  @override
  State<HealthBar> createState() => _nameState();
}

class _nameState extends State<HealthBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          toolbarHeight: 85,
          title: Container(
            padding: EdgeInsets.only(top: 40, left: 40, bottom: 20),
            child: Text(
              "Health Data",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(13), bottom: Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 0.8),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Medical Reports",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Find your health reports here",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("healthdata");
                      },
                    ),
                  ),
                  SizedBox(width: 130),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(13), bottom: Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 0.8),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Medical Reports",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Find your health reports here",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("");
                      },
                    ),
                  ),
                  SizedBox(width: 130),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(13), bottom: Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 0.8),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Medical Reports",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Find your health reports here",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("");
                      },
                    ),
                  ),
                  SizedBox(width: 130),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(13), bottom: Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 0.8),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Medical Reports",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Find your health reports here",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("");
                      },
                    ),
                  ),
                  SizedBox(width: 130),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(13), bottom: Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 0.8),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Medical Reports",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Find your health reports here",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("");
                      },
                    ),
                  ),
                  SizedBox(width: 130),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(13), bottom: Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 0.8),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Medical Reports",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Find your health reports here",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("");
                      },
                    ),
                  ),
                  SizedBox(width: 130),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(13), bottom: Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 0.8),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Medical Reports",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Find your health reports here",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("");
                      },
                    ),
                  ),
                  SizedBox(width: 130),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(13), bottom: Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 0.8),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Medical Reports",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Find your health reports here",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("");
                      },
                    ),
                  ),
                  SizedBox(width: 130),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ])
        ]));
  }
}
