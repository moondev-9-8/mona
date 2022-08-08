import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _nameState();
}

class _nameState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //بدل scaffold
        length: 3, //no of widget in the tabBarView as direct child
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 75,
            title: Container(
              height: 100,
              padding: EdgeInsets.only(top: 45, left: 70),
              child: Text(
                "Bookings",
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
                    "Ongoing",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "Past",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "Scheduled",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Column(
              //ongoing
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 370,
                  height: 230,
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
                              height: 80,
                              child:
                                  Image(image: AssetImage("images/baby.png"))),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // width: 80,
                                padding: EdgeInsets.only(top: 18),
                                child: Text(
                                  "Anosmia",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 200,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "It is a long established fact that reader distracted by the readable content of a page when looking at.",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 45,
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "price:",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    // padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text(
                                      " %99.00",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 130),
                            padding: EdgeInsets.only(top: 5),
                            width: 69,
                            height: 28,
                            color: Colors.grey,
                            child: Text(
                              "Visit Clinic",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 60,
                                height: 50,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 158, 43, 43),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed("bookinginfo");
                                    },
                                    child: Text(
                                      "14 Aug",
                                      style: TextStyle(fontSize: 15),
                                    ))),
                            Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text("Morning slot")),
                                Text(
                                  "8:00 AM",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 110),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 158, 43, 43),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed("bookinginfo");
                                  },
                                  child: Text(
                                    "cancel",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 370,
                  height: 230,
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
                              height: 80,
                              child:
                                  Image(image: AssetImage("images/baby.png"))),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                //width: 80,
                                padding: EdgeInsets.only(top: 18),
                                child: Text(
                                  "Dr. Shruti Kedia",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 150,
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  " 6 years experience",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Container(
                                width: 170,
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, bottom: 10),
                                child: Text(
                                  " L. No : #23456353",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                      // width: ,
                                      padding: EdgeInsets.only(left: 5),
                                      child: Icon(Icons.location_pin)),
                                  Container(
                                    width: 170,
                                    // padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text(
                                      " Mohali, Chandigrah, India",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 100,
                            ),
                            padding: EdgeInsets.only(top: 5),
                            width: 69,
                            height: 28,
                            color: Colors.grey,
                            child: Text(
                              "Visit Clinic",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 60,
                                height: 50,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 158, 43, 43),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Text(
                                      "14 Aug",
                                      style: TextStyle(fontSize: 15),
                                    ))),
                            Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text("Morning slot")),
                                Text(
                                  "8:00 AM",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 110),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 158, 43, 43),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  onPressed: () {},
                                  child: Text(
                                    "cancel",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              //past
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 370,
                    height: 230,
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
                                height: 80,
                                child: Image(
                                    image: AssetImage("images/baby.png"))),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // width: 80,
                                  padding: EdgeInsets.only(top: 18),
                                  child: Text(
                                    "Anosmia",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "It is a long established fact that reader distracted by the readable content of a page when looking at.",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 45,
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "price:",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      // padding: EdgeInsets.only(top: 10, bottom: 10),
                                      child: Text(
                                        " %99.00",
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 130),
                              padding: EdgeInsets.only(top: 5),
                              width: 69,
                              height: 28,
                              color: Colors.grey,
                              child: Text(
                                "Video call",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 60,
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 158, 43, 43),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onPressed: () {
                                        Navigator.of(context).pushNamed("past");
                                      },
                                      child: Text(
                                        "14 Aug",
                                        style: TextStyle(fontSize: 15),
                                      ))),
                              Column(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text("Morning slot")),
                                  Text(
                                    "8:00 AM",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 90),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 194, 219, 68),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    onPressed: () {},
                                    child: Text(
                                      "Completed",
                                      style: TextStyle(fontSize: 15),
                                    )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 370,
                    height: 230,
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
                                height: 80,
                                child: Image(
                                    image: AssetImage("images/baby.png"))),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  //width: 80,
                                  padding: EdgeInsets.only(top: 18),
                                  child: Text(
                                    "Dr. Shruti Kedia",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  padding: EdgeInsets.only(top: 10, left: 10),
                                  child: Text(
                                    " 6 years experience",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Container(
                                  width: 170,
                                  padding: EdgeInsets.only(
                                      top: 10, left: 10, bottom: 10),
                                  child: Text(
                                    " L. No : #23456353",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        // width: ,
                                        padding: EdgeInsets.only(left: 5),
                                        child: Icon(Icons.location_pin)),
                                    Container(
                                      width: 170,
                                      // padding: EdgeInsets.only(top: 10, bottom: 10),
                                      child: Text(
                                        " Mohali, Chandigrah, India",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 100,
                              ),
                              padding: EdgeInsets.only(top: 5),
                              width: 69,
                              height: 28,
                              color: Colors.grey,
                              child: Text(
                                "Video call",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 60,
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromARGB(255, 158, 43, 43),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onPressed: () {},
                                      child: Text(
                                        "14 Aug",
                                        style: TextStyle(fontSize: 15),
                                      ))),
                              Column(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text("Morning slot")),
                                  Text(
                                    "8:00 AM",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 90),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 194, 219, 68),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    onPressed: () {},
                                    child: Text(
                                      "Completed",
                                      style: TextStyle(fontSize: 15),
                                    )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(""),
            ),
          ]),
        ));
  }
}
