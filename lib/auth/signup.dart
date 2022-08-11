import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _nameState();
}

class _nameState extends State<Signup> {
  TextEditingController phoneController = new TextEditingController();
  String phoneNumber = "";

  void _onCountryChange(CountryCode countryCode) {
    this.phoneNumber = countryCode.toString();
    print("New Country selected: " + countryCode.toString());
  }

  void check() {
    print("Full Text: " + this.phoneNumber + phoneController.text);
  }

  bool rem = false;
  @override
  Widget build(BuildContext context) {
    final phone = new TextFormField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      autofocus: false,
      style: new TextStyle(
        fontSize: 14.0,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    );

    return Scaffold(
      //appBar: AppBar(),
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
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  child: Form(
                      child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text("Email"),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text("Phone Number"),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(top: 12),
                              child: CountryCodePicker(
                                padding: EdgeInsets.only(right: 0),
                                flagWidth: 23,
                                // flagDecoration: BoxDecoration(),
                                onChanged: _onCountryChange,
                                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                initialSelection: 'IT',
                                favorite: ['+39', 'FR'],
                                // optional. Shows only country name and flag
                                showCountryOnly: true,
                                // optional. Shows only country name and flag when popup is closed.
                                showOnlyCountryWhenClosed: false,
                                // optional. aligns the flag and the Text left
                                alignLeft: false,
                                showDropDownButton: true,
                              ),
                            ),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            label: Text("Password"),
                            suffixIcon: Icon(Icons.visibility_off),
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: " Confirm password",
                            border: UnderlineInputBorder()),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Colors.red,
                              value: rem,
                              onChanged: (val) {
                                setState(() {
                                  rem = val!;
                                });
                              }),
                          Container(
                            child: Text(
                              "Accept terms & conditions",
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("profile");
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 145, vertical: 15),
                              primary: Color.fromARGB(255, 158, 43, 43),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Text("Next")),
                      SizedBox(height: 40),
                      Container(
                        margin: EdgeInsets.only(top: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already a Member? ",
                              style: TextStyle(
                                  color: Colors.grey[800], fontSize: 15),
                            ),
                            InkWell(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 158, 43, 43),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamed("signin");
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
