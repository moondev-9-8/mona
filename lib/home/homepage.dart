import 'package:course_flutter/home/bookings.dart';
import 'package:flutter/material.dart';

class Homepage1 extends StatefulWidget {
  Homepage1({Key? key}) : super(key: key);

  @override
  State<Homepage1> createState() => _nameState();
}

class _nameState extends State<Homepage1> with SingleTickerProviderStateMixin {
  late PageController pc;

  @override
  void initState() {
    pc = new PageController(initialPage: 0, viewportFraction: 0.7);
    super.initState();
  }

  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: null,

        body: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 5),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/contactIcon.PNG"),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 50),
                        child: Text(
                          "Hi, Mona",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.location_pin,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 3),
                              child: Text(
                                "15/2 new texas",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 90, top: 25),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.map_sharp,
                            color: Colors.white,
                          ))),
                  Container(
                      padding: EdgeInsets.only(top: 25, left: 3),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          )))
                ],
              ),
            ),
            Container(
                //margin: EdgeInsets.only(top: 20),
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: EdgeInsets.only(right: 240),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            showSearch(
                                context: context, delegate: DataSearch());
                          }),
                      Text("Search...")
                    ],
                  ),
                )),
            Container(
              padding: EdgeInsets.only(right: 300, top: 10),
              child: Text(
                "Articles",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              width: double.infinity,
              height: 120,
              //padding: EdgeInsets.all(10),
              child: GridView(
                  scrollDirection: Axis.vertical,
                  // itemCount: mobile.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all(
                                color: Color.fromARGB(255, 210, 210, 210),
                              )),
                          child: SizedBox.fromSize(
                            size: Size(56, 56),
                            child: ClipOval(
                              child: Material(
                                color: Color.fromARGB(255, 255, 255, 255),
                                child: InkWell(
                                  splashColor: Colors.green,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage("images/dental.png"),
                                        fit: BoxFit.cover,
                                      ), // <-- Icon
                                      // <-- Text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            'Dental',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox.fromSize(
                            size: Size(56, 56),
                            child: ClipOval(
                              child: Material(
                                color: Color.fromARGB(255, 172, 31, 47),
                                child: InkWell(
                                  splashColor: Colors.green,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage("images/heart.png"),
                                        fit: BoxFit.cover,
                                      ),

                                      // <-- Text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              'Heart',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all(
                                color: Color.fromARGB(255, 210, 210, 210),
                              )),
                          child: SizedBox.fromSize(
                            size: Size(56, 56),
                            child: ClipOval(
                              child: Material(
                                color: Color.fromARGB(255, 255, 255, 255),
                                child: InkWell(
                                  splashColor: Colors.green,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove_red_eye,
                                        color:
                                            Color.fromARGB(255, 219, 173, 34),
                                      ), // <-- Icon
                                      // <-- Text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            'Eyes',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              border: Border.all(
                                color: Color.fromARGB(255, 210, 210, 210),
                              )),
                          child: SizedBox.fromSize(
                            size: Size(56, 56),
                            child: ClipOval(
                              child: Material(
                                color: Color.fromARGB(255, 255, 255, 255),
                                child: InkWell(
                                  splashColor: Colors.green,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage("images/brain.png"),
                                        fit: BoxFit.cover,
                                      ), // <-- Icon
                                      // <-- Text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            'Brain',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Counselling Videos",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  InkWell(
                    child: Text(
                      "See All",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    onTap: () {},
                  ),
                  Icon(Icons.navigate_next, color: Colors.grey[700])
                ],
              ),
            ),
            Container(
              height: 160,
              child: GridView(
                scrollDirection: Axis.vertical,
                //direction: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.grey,
                    width: 150,
                    height: 250,
                    child: Image(image: AssetImage("images/dental.png")),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.grey,
                    width: 150,
                    height: 250,
                    child: Image(image: AssetImage("images/dental.png")),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.grey,
                    width: 150,
                    height: 250,
                    child: Image(image: AssetImage("images/dental.png")),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 310),
              child: Text(
                "Tools",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 370,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(13), bottom: Radius.circular(10)),
                    border: Border.all(color: Colors.grey, width: 0.8),
                  ),
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Image(image: AssetImage("images/baby.png"))),
                      Text(
                        "Family Planing",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey[800]),
                      ),
                      SizedBox(width: 160),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next,
                              color: Colors.grey[800]))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 370,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(13), bottom: Radius.circular(10)),
                    border: Border.all(color: Colors.grey, width: 0.8),
                  ),
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Image(image: AssetImage("images/baby.png"))),
                      Text(
                        "Antenatal Care",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey[800]),
                      ),
                      SizedBox(width: 160),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.navigate_next,
                              color: Colors.grey[800]))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("healthdata");
          },
          icon: Icon(Icons.add),
          label: Text("Add Health Data"),
        ));
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
// TODO: implement buildActions
// throw UnimplementedError();
    return [IconButton(onPressed: () {}, icon: Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
// TODO: implement buildLeading
// throw UnimplementedError();
//
    [IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))];
  }

  @override
  Widget buildResults(BuildContext context) {
// TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
// TODO: implement buildSuggestions
// throw UnimplementedError();
    return Center(
      child: Text('محتوى البحث'),
    );
  }
}
