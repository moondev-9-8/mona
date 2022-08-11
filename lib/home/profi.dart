import 'package:flutter/material.dart';

class Profi extends StatefulWidget {
  Profi({Key? key}) : super(key: key);

  @override
  State<Profi> createState() => _nameState();
}

class _nameState extends State<Profi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          // backgroundColor: Theme.of(context).primaryColor,
          title: Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 190, 102, 95),
                  Color.fromARGB(255, 144, 62, 57),
                  Color.fromARGB(255, 120, 31, 25),
                  Color.fromARGB(255, 92, 12, 8)
                ],
                    stops: [
                  0.1,
                  0.4,
                  0.6,
                  0.9,
                ])),
            child: Stack(children: [
              Container(
                  // color: Theme.of(context).primaryColor,

                  ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/contactIcon.PNG"),
                  radius: 60,
                ),
              )
            ]),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 0, top: 20),
                    child: Text(
                      "Andy Wilson",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, bottom: 10),
                    child: Text(
                      "andy@gmail.com",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ), //1
              Container(
                margin: EdgeInsets.all(15),
                width: 370,
                height: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(13), bottom: Radius.circular(10)),
                    border: Border.all(color: Colors.grey, width: 0.5),
                    // color: Colors.grey[200],
                    shape: BoxShape.rectangle),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(direction: Axis.horizontal, children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "First Name ",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 210),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Andy",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Last Name ",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 200),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Wilson",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Email ",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 130),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "andywilson@gmail.com",
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
                      SizedBox(width: 155),
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
                          "Phone number",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 133),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "+40767217315",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Address",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 140),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Bucharest, Romania",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("editpro");
                  },
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 165, vertical: 15),
                      primary: Color.fromARGB(255, 158, 43, 43),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Edit")),
            ],
          ),
        ));
  }
}
