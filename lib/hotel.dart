import 'package:flutter/material.dart';

class Hotel extends StatefulWidget {
  Hotel({Key? key}) : super(key: key);

  @override
  State<Hotel> createState() => _nameState();
}

class _nameState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          //1
          Container(
              child: Text(
                // TextStyle( color: Colors.white),
                "book your Room Now",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(10),
              height: 50,
              width: 300,
              margin:
                  EdgeInsets.only(left: 10, right: 10, top: 100, bottom: 30),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                      color: Color.fromARGB(255, 30, 30, 30), width: 4))),
          // 2
          Container(
            child: Text(
              "pavivea is a high class hotel in an amazing area againts the shore, with full service and all   ",
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(bottom: 50),
          ),
          //3
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 36, 35, 35))),
            child: Column(
              children: [
//1 child
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      // margin: EdgeInsets.only(
                      //     left: 20, right: 20, top: 50, bottom: 100),
                      child: Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.star_rate,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.star_rate,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //padding: EdgeInsets.only(left: 100),
                        margin: EdgeInsets.only(top: 10, left: 100),
                        child: Text("17 reviews"),
                      ),
                    ),
                  ],
                ),
                //2 child
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      child: Icon(
                        Icons.restaurant,
                        color: Colors.green,
                        size: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      child: Icon(
                        Icons.model_training_outlined,
                        color: Colors.green,
                        size: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      child: Icon(
                        Icons.coffee,
                        color: Colors.green,
                        size: 40,
                      ),
                    )
                  ],
                ),
                //3 child
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Text(
                        "feed",
                        style: TextStyle(),
                      ),
                    ),
                    Container(
                      child: Text(
                        "feed",
                        style: TextStyle(),
                      ),
                    ),
                    Container(
                      child: Text(
                        "feed",
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
                //4 child
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "2 - 4",
                        style: TextStyle(),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "2 - 4",
                        style: TextStyle(),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "2 - 4",
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
