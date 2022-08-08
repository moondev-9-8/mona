import 'package:flutter/material.dart';

class Addnote extends StatefulWidget {
  @override
  State<Addnote> createState() => _AddnoteState();
}

class _AddnoteState extends State<Addnote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                TextFormField(
                  maxLength: 30,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Note title",
                      prefixIcon: Icon(Icons.note)),
                ),
                TextFormField(
                  maxLength: 300,
                  minLines: 3,
                  maxLines: 5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Note",
                    prefixIcon: Icon(Icons.note),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: EdgeInsets.all(10),
                              height: 180,
                              child: Column(
                                children: [
                                  Text(
                                    "please choose image",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  InkWell(
                                    child: Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.photo,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "gallary",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        )),
                                  ),
                                  InkWell(
                                    child: Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            Icon(Icons.camera,
                                                color: Theme.of(context)
                                                    .primaryColor),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text("camera",
                                                style: TextStyle(fontSize: 15)),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            );
                          }); //showmodal
                    },
                    child: Text(
                      "add image",
                      style: TextStyle(color: Colors.white),
                    ), //here
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                RaisedButton(
                  onPressed: () {},
                  // textColor: Colors.white,
                  child: Container(
                    width: 120,
                    child: Row(
                      children: [
                        Text(
                          "Add Note",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
