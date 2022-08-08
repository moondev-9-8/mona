import 'package:course_flutter/auth/forget.dart';
import 'package:course_flutter/auth/setpass.dart';
import 'package:course_flutter/auth/signin.dart';
import 'package:course_flutter/auth/signup.dart';
import 'package:course_flutter/auth/verify.dart';
import 'package:course_flutter/create/addnote.dart';
import 'package:course_flutter/home/bookinginfo.dart';
import 'package:course_flutter/home/bookings.dart';
import 'package:course_flutter/home/consult.dart';
import 'package:course_flutter/home/healthBar.dart';
import 'package:course_flutter/home/healthData.dart';
import 'package:course_flutter/home/homepage.dart';
import 'package:course_flutter/home/navi.dart';
import 'package:course_flutter/home/past.dart';
import 'package:course_flutter/home/settings.dart';
import 'package:course_flutter/intro/choose.dart';
import 'package:course_flutter/intro/find.dart';
import 'package:course_flutter/intro/start.dart';
import 'package:course_flutter/profile/enableloc.dart';
import 'package:course_flutter/profile/location.dart';
import 'package:course_flutter/profile/profile.dart';

import 'package:flutter/material.dart';
import 'package:course_flutter/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Find(),
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 158, 43, 43),
        buttonColor: Color.fromARGB(255, 158, 43, 43),
        textTheme:
            TextTheme(headline5: TextStyle(fontSize: 20, color: Colors.white)),
      ),
      routes: {
        "find": (context) => Find(),
        "choose": (context) => Choose(),
        "start": (context) => Start(),
        "signin": (context) => Signin(),
        "signup": (context) => Signup(),
        "forget": (context) => Forget(),
        "setpass": (context) => SetPass(),
        "verify": (context) => Verify(),
        "profile": (context) => Profile(),
        "enableloc": (context) => Enableloc(),
        "locate": (context) => Location(),
        "navi": (context) => Navi(),
        "homepage1": (context) => Homepage1(),
        "booking": (context) => Booking(),
        "bookinginfo": (context) => BookingInfo(),
        "healthdata": (context) => HealthData(),
        "past": (context) => Past(),
        "consult": (context) => Consult(),
        "healthbar": (context) => HealthBar(),
        "settings": (context) => Settings(),
        "addnote": (context) => Addnote(),

        //   "one": (context) => One(),
        //   "home": (context) => Test(),
        //   "two": (context) => Two(),
        //   "three": (context) => Three(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
    );
  }
}

//1-stateless widget
// class test extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
//2- statefull widget
// class Test extends StatefulWidget {
//   State<StatefulWidget> createState() {
//     return TestState(); //في الستتيتفل اذا سميت الكلاس مثلا mona حيكون اسم الكلاس الاكستندد منو اسمو monaState
//   }
// }

// class TestState extends State<Test> {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       drawer: Drawer(),
//       body: Text("hello stateful widget"),
//     );
//   }
// }
// class Tests extends StatefulWidget {
//   // اكتب state وبجيك براو
//   Tests({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// var text = " hello"; //عرفتا متغير اسمو تكست

// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       drawer: Drawer(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("$text"), // التكست ح اباصي ليو متغير
//             RaisedButton(
//               onPressed: () {
//                 setState(() {
//                   //بتغير لي قيمه التكست ..خاصه بالستيت فل
//                   text = "welcome1"; //الفيمه الجديده
//                 });
//                 print(text);
//               },
//               child: Text("changed buttom"),
//               color: Colors.amber,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
