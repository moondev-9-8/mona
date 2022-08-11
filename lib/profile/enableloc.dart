import 'package:flutter/material.dart';

class Enableloc extends StatefulWidget {
  Enableloc({Key? key}) : super(key: key);

  @override
  State<Enableloc> createState() => _nameState();
}

class _nameState extends State<Enableloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Image(
              image: AssetImage("images/map.png"),
              fit: BoxFit.contain,
            ),
            height: 400,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Enable Your Location",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Choose your location to start find the request around you.",
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                primary: Color.fromARGB(255, 158, 43, 43),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("locate");
            },
            child: Text(
              "Use my location",
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
            onTap: () {},
          )
        ],
      ),
    );
  }
}
