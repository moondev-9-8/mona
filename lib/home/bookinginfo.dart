import 'package:flutter/material.dart';

class BookingInfo extends StatefulWidget {
  BookingInfo({Key? key}) : super(key: key);

  @override
  State<BookingInfo> createState() => _nameState();
}

class _nameState extends State<BookingInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          toolbarHeight: 85,
          title: Container(
            padding: EdgeInsets.only(top: 40, left: 40, bottom: 20),
            child: Text(
              "Booking Detail",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(13), bottom: Radius.circular(10)),
                  border: Border.all(color: Colors.grey, width: 0.5),
                  // color: Colors.grey[200],
                  shape: BoxShape.rectangle),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          width: 100,
                          height: 80,
                          child: Image(image: AssetImage("images/baby.png"))),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // width: 80,
                            padding: EdgeInsets.only(top: 18),
                            child: Text(
                              "Anosmia",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
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
                        width: 68,
                        height: 28,
                        color: Colors.grey,
                        child: Text(
                          "Live Chat",
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
                                    primary: Color.fromARGB(255, 158, 43, 43),
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
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {},
                              child: Text(
                                "Ongoing",
                                style: TextStyle(fontSize: 15),
                              )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                        primary: Color.fromARGB(255, 158, 43, 43),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("navi");
                    },
                    child: Text(
                      "Postpone",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(13), bottom: Radius.circular(10)),
                  border: Border.all(color: Colors.grey, width: 0.5),
                  // color: Colors.grey[200],
                  shape: BoxShape.rectangle),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "DA Clinic",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Wrap(direction: Axis.horizontal, children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using lorem Ipsum is that it has a more it is a long established. ",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 370,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(13), bottom: Radius.circular(10)),
                  border: Border.all(color: Colors.grey, width: 0.5),
                  // color: Colors.grey[200],
                  shape: BoxShape.rectangle),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Patient Detail",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 180),
                      InkWell(
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Theme.of(context).primaryColor),
                        ),
                      )
                    ],
                  ),
                  Wrap(direction: Axis.horizontal, children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Full Name ",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(width: 170),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Andy Wilson",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Date of Birth",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(width: 150),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "24-May-1990",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "ID Proof",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(width: 145),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Driving License.pdf",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
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
                  border: Border.all(color: Colors.grey, width: 0.5),
                  shape: BoxShape.rectangle),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.monitor_heart_rounded,
                      color: Color.fromARGB(255, 172, 31, 47),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    child: Text(
                      "Health Data",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("healthdata");
                    },
                  ),
                  SizedBox(width: 200),
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
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(13), bottom: Radius.circular(10)),
                  border: Border.all(color: Colors.grey, width: 0.5),
                  // color: Colors.grey[200],
                  shape: BoxShape.rectangle),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Payment Breakdown",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(direction: Axis.horizontal, children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Medical Fee ",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 190),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "%99.00",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Convenience Charges",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 140),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "%1.00",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Total amount",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 185),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "%25.00",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  // color: Theme.of(context).primaryColor,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.phone, color: Colors.white)),
                ),
                SizedBox(width: 30),
                Container(
                  margin: EdgeInsets.all(10),
                  // color: Theme.of(context).primaryColor,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message, color: Colors.white)),
                ),
                SizedBox(width: 30),
                Container(
                  margin: EdgeInsets.all(10),
                  // color: Theme.of(context).primaryColor,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.video_camera_back,
                        color: Colors.white,
                      )),
                ),
              ],
            )
          ])
        ]));
  }
}
