import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _nameState();
}

class _nameState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile Setup",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white70,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage("images/cont.jpg"),
                      backgroundColor: Color.fromARGB(255, 158, 43, 43),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Form(
                      child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text("Full Name"),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text("Email"),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            label: Text("Phone"),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text("Date of Birth"),
                            suffixIcon: Icon(
                              Icons.calendar_month_rounded,
                              color: Color.fromARGB(255, 158, 43, 43),
                            ),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: " Height",
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Weight",
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: " marital status",
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "state",
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "locality",
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "occupation",
                            border: UnderlineInputBorder()),
                      ),

                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //       padding:
                      //           EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                      //       primary: Color.fromARGB(255, 158, 43, 43),
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(20))),
                      //   child: Text("Next"),
                      //   onPressed: () {
                      //     Navigator.of(context).pushReplacementNamed("enableloc");
                      //   },
                      // ),
                    ],
                  )),
                )
              ],
            ),
          ],
        ),
        floatingActionButton: Container(
          height: 50,
          width: 350,
          child: new RawMaterialButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              fillColor: Theme.of(context).primaryColor,
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("locate");
              }),
        ));
  }
}
