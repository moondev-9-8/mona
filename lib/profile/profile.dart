import 'package:flutter/material.dart';
//import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _nameState();
}

class _nameState extends State<Profile> {
  TextEditingController phoneController = new TextEditingController();
  String phoneNumber = "";

  void _onCountryChange(CountryCode countryCode) {
    this.phoneNumber = countryCode.toString();
    print("New Country selected: " + countryCode.toString());
  }

  void check() {
    print("Full Text: " + this.phoneNumber + phoneController.text);
  }

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
                padding: EdgeInsets.only(top: 30),
                height: 250,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 90,
                      child: Container(
                        padding: EdgeInsets.all(45),
                        child: Image(
                          image: AssetImage("images/person.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      backgroundColor: Color.fromARGB(255, 158, 43, 43),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 60, top: 150),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        // backgroundImage: AssetImage("images/cam.png",),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.grey[600],
                          size: 25,
                        ),
                        radius: 30,
                      ),
                    ),
                  ],
                ),
              ),

              // Container(
              //   margin: EdgeInsets.only(top: 50),
              // ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 20, bottom: 10),
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
                          label: Text("Email"), border: UnderlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
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
                          hintText: "locality", border: UnderlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "occupation",
                          border: UnderlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 140, vertical: 15),
                          primary: Color.fromARGB(255, 158, 43, 43),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text("Next"),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("enableloc");
                      },
                    ),
                  ],
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
