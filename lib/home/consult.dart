import 'package:flutter/material.dart';

class Consult extends StatefulWidget {
  Consult({Key? key}) : super(key: key);

  @override
  State<Consult> createState() => _nameState();
}

class _nameState extends State<Consult> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //بدل scaffold
        length: 2, //no of widget in the tabBarView as direct child
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 75,
              title: Container(
                height: 100,
                padding: EdgeInsets.only(top: 45, left: 70),
                child: Text(
                  "Consultation",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              backgroundColor: Colors.white70,
              bottom: TabBar(
                isScrollable: true,
                padding: EdgeInsets.symmetric(horizontal: 30),
                indicatorPadding: EdgeInsets.zero,
                indicatorColor: Theme.of(context).primaryColor,
                indicatorSize: TabBarIndicatorSize.tab, //default
                indicatorWeight: 2,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelPadding: EdgeInsets.symmetric(horizontal: 25),
                onTap: (index) {
                  print(index);
                },
                tabs: [
                  //No of tabs= length = No of wigets in tabBarView
                  Tab(
                    child: Text(
                      "Visit Clinic",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Live Consultation",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [
              ListView(
                children: [
                  Column(
                    //ongoing
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 370,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(13),
                                bottom: Radius.circular(10)),
                            border: Border.all(color: Colors.grey, width: 0.3),
                            color: Colors.grey[200],
                            shape: BoxShape.rectangle),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 90,
                                    child: Image(
                                        image: AssetImage("images/baby.png"))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // width: 80,
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        "DA Clinic",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Address: 15/2 New Texas",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 158, 43, 43),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text("Book Now")),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 130),
                                    padding: EdgeInsets.only(top: 5),
                                    width: 69,
                                    height: 28,
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 370,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(13),
                                bottom: Radius.circular(10)),
                            border: Border.all(color: Colors.grey, width: 0.3),
                            color: Colors.grey[200],
                            shape: BoxShape.rectangle),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 90,
                                    child: Image(
                                        image: AssetImage("images/baby.png"))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // width: 80,
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        "DA Clinic",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Address: 15/2 New Texas",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 158, 43, 43),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text("Book Now")),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 130),
                                    padding: EdgeInsets.only(top: 5),
                                    width: 69,
                                    height: 28,
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 370,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(13),
                                bottom: Radius.circular(10)),
                            border: Border.all(color: Colors.grey, width: 0.3),
                            color: Colors.grey[200],
                            shape: BoxShape.rectangle),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 90,
                                    child: Image(
                                        image: AssetImage("images/baby.png"))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // width: 80,
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        "DA Clinic",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Address: 15/2 New Texas",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 158, 43, 43),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text("Book Now")),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 130),
                                    padding: EdgeInsets.only(top: 5),
                                    width: 69,
                                    height: 28,
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 370,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(13),
                                bottom: Radius.circular(10)),
                            border: Border.all(color: Colors.grey, width: 0.3),
                            color: Colors.grey[200],
                            shape: BoxShape.rectangle),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 90,
                                    child: Image(
                                        image: AssetImage("images/baby.png"))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // width: 80,
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        "DA Clinic",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Address: 15/2 New Texas",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 158, 43, 43),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text("Book Now")),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 130),
                                    padding: EdgeInsets.only(top: 5),
                                    width: 69,
                                    height: 28,
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              ListView(
                children: [
                  Column(
                    //ongoing
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 370,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(13),
                                bottom: Radius.circular(10)),
                            border: Border.all(color: Colors.grey, width: 0.3),
                            color: Colors.grey[200],
                            shape: BoxShape.rectangle),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 90,
                                    child: Image(
                                        image: AssetImage("images/baby.png"))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // width: 80,
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        "DA Clinic",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Address: 15/2 New Texas",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 158, 43, 43),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text("Book Now")),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 130),
                                    padding: EdgeInsets.only(top: 5),
                                    width: 69,
                                    height: 28,
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 370,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(13),
                                bottom: Radius.circular(10)),
                            border: Border.all(color: Colors.grey, width: 0.3),
                            color: Colors.grey[200],
                            shape: BoxShape.rectangle),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 90,
                                    child: Image(
                                        image: AssetImage("images/baby.png"))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // width: 80,
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        "DA Clinic",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Address: 15/2 New Texas",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 158, 43, 43),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text("Book Now")),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 130),
                                    padding: EdgeInsets.only(top: 5),
                                    width: 69,
                                    height: 28,
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 370,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(13),
                                bottom: Radius.circular(10)),
                            border: Border.all(color: Colors.grey, width: 0.3),
                            color: Colors.grey[200],
                            shape: BoxShape.rectangle),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 90,
                                    child: Image(
                                        image: AssetImage("images/baby.png"))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // width: 80,
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        "DA Clinic",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Address: 15/2 New Texas",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 158, 43, 43),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text("Book Now")),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 130),
                                    padding: EdgeInsets.only(top: 5),
                                    width: 69,
                                    height: 28,
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 370,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(13),
                                bottom: Radius.circular(10)),
                            border: Border.all(color: Colors.grey, width: 0.3),
                            color: Colors.grey[200],
                            shape: BoxShape.rectangle),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 90,
                                    child: Image(
                                        image: AssetImage("images/baby.png"))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // width: 80,
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        "DA Clinic",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Address: 15/2 New Texas",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromARGB(
                                                255, 158, 43, 43),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                        onPressed: () {},
                                        child: Text("Book Now")),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(bottom: 130),
                                    padding: EdgeInsets.only(top: 5),
                                    width: 69,
                                    height: 28,
                                    child: Icon(Icons.favorite_border))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ])));
  }
}
