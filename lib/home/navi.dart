import 'package:course_flutter/home/bookings.dart';
import 'package:course_flutter/home/consult.dart';
import 'package:course_flutter/home/healthBar.dart';
import 'package:course_flutter/home/homepage.dart';
import 'package:course_flutter/home/settings.dart';
import 'package:flutter/material.dart';

class Navi extends StatefulWidget {
  Navi({Key? key}) : super(key: key);

  @override
  State<Navi> createState() => _nameState();
}

class _nameState extends State<Navi> with SingleTickerProviderStateMixin {
  late PageController pc;

  @override
  void initState() {
    pc = new PageController(initialPage: 0, viewportFraction: 0.7);
    super.initState();
  }

  int cindex = 0;
  int _selectedIndex = 0;
  List<Widget> wedgetpages = [
    Homepage1(),
    Booking(),
    Consult(),
    HealthBar(),
    Settings(),
  ];
  // List user = ['mohab', 'Ali', 'Sayed'];
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        key: scaffoldkey,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: cindex,
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          unselectedFontSize: 10,
          selectedItemColor: Theme.of(context).primaryColor,
          selectedFontSize: 15,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Booking', icon: Icon(Icons.calendar_month_outlined)),
            BottomNavigationBarItem(
                label: 'Consultation', icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                label: 'Heart Data', icon: Icon(Icons.monitor_heart)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
          ],
          onTap: (int index) {
            setState(() {
              cindex = index;
              print(cindex);
            });
          },
        ),
        body: Container(child: wedgetpages.elementAt(cindex)));
  }
}
