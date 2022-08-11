import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _nameState();
}

class _nameState extends State<Signin> {
  bool? rem = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(      ),
      //resizeToAvoidBottomInset : false,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 130, bottom: 30, right: 260),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  child: Form(
                      child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text("Password"),
                        suffixIcon: Icon(Icons.visibility_off),
                        border: UnderlineInputBorder(),
                      ),
                    )
                  ])),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 60),
                  child: Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.red,
                          value: rem,
                          onChanged: (val) {
                            setState(() {
                              rem = val;
                            });
                          }),
                      Container(
                        margin: EdgeInsets.only(right: 60),
                        child: Text(
                          "Remember me",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(color: Colors.grey[700]),
                          textAlign: TextAlign.end,
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("forget");
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                        primary: Color.fromARGB(255, 158, 43, 43),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("navi");
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: InkWell(
                    child: Text(
                      "Continue with Phone Number",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Text("OR",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/facebk.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage("images/gmail.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("images/apple.png"),

                      //backgroundImage: AssetImage("images/"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a Member? ",
                      style: TextStyle(color: Colors.grey[800], fontSize: 15),
                    ),
                    InkWell(
                      child: Text(
                        " Sign up",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 158, 43, 43),
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("signup");
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//  Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
         
//         children: [
//           Container(
//             padding: EdgeInsets.only(top: 60, bottom: 50, left: 20),
//             child: Text(
//               "Sign In",
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             child: Form(
//                 child: Column(children: [
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: "Email",
//                   border: UnderlineInputBorder(),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   label: Text("Password"),
//                   suffixIcon: Icon(Icons.visibility_off),
//                   border: UnderlineInputBorder(),
//                 ),
//               )
//             ])),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 60),
//             child: Row(
//               children: [
//                 Checkbox(
//                     activeColor: Colors.red,
//                     value: rem,
//                     onChanged: (val) {
//                       setState(() {
//                         rem = val;
//                       });
//                     }),
//                 Container(
//                   margin: EdgeInsets.only(right: 60),
//                   child: Text(
//                     "Remember me",
//                     style: TextStyle(color: Colors.grey[700]),
//                   ),
//                 ),
//                 InkWell(
//                   child: Text(
//                     "Forgot your password?",
//                     style: TextStyle(color: Colors.grey[700]),
//                     textAlign: TextAlign.end,
//                   ),
//                   onTap: () {
//                     Navigator.of(context).pushNamed("forget");
//                   },
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 30),
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
//                   primary: Color.fromARGB(255, 158, 43, 43),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20))),
//               onPressed: () {
//                 Navigator.of(context).pushReplacementNamed("navi");
//               },
//               child: Text(
//                 "Sign in",
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Center(
//             child: InkWell(
//               child: Text(
//                 "Continue with Phone Number",
//                 style: TextStyle(color: Colors.grey),
//                 textAlign: TextAlign.center,
//               ),
//               onTap: () {},
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Center(
//               child: Text("OR", style: TextStyle(fontWeight: FontWeight.bold))),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 20,
//                 // child: Text(
//                 //   "f",
//                 //   style: TextStyle(
//                 //       fontWeight: FontWeight.bold, fontSize: 30),
//                 // ),
//                 backgroundImage: AssetImage("images/facebk.png"),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               CircleAvatar(
//                 radius: 20,
//                 backgroundColor: Colors.red,
//                 backgroundImage: AssetImage("images/gmail.png"),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               CircleAvatar(
//                 radius: 20,
//                 backgroundColor: Colors.white,
//                 backgroundImage: AssetImage("images/apple.png"),

//                 //backgroundImage: AssetImage("images/"),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 80,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Not a Member? ",
//                 style: TextStyle(color: Colors.grey[800], fontSize: 15),
//               ),
//               InkWell(
//                 child: Text(
//                   " Sign up",
//                   style: TextStyle(
//                       fontSize: 16,
//                       color: Color.fromARGB(255, 158, 43, 43),
//                       fontWeight: FontWeight.bold),
//                 ),
//                 onTap: () {
//                   Navigator.of(context).pushNamed("signup");
//                 },
//               )
//             ],
//           ),
//         ],
//       ),