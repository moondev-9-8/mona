import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _nameState();
}

class _nameState extends State<Location> {
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
              image: AssetImage("images/loca.jpg"),
              fit: BoxFit.cover,
            ),
            height: 500,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                primary: Color.fromARGB(255, 158, 43, 43),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("homepage1");
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
