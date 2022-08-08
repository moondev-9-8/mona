import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page ONE"),
        ),
        body: Column(
          children: [
            Text("welcome to page one"),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("back"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("one");
                Navigator.of(context).pushNamed("home");
              },
              child: Text("goto page home"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("two");
              },
              child: Text("goto page two"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("three");
              },
              child: Text("goto page three"),
            )
          ],
        ));
  }
}
