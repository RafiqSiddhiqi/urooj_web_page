import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:urooj_web/footer.dart';
import 'package:urooj_web_page/pages/footer.dart';
import 'package:urooj_web_page/utils/routes.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      setState(() {
        changeButton = false;
      });
    }
  }

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1D5E4A),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
              ),
              child: Text("Urooj Academy",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Center(
                        child: Text(
                          'See More',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, top: 0),
                  child: Icon(Icons.arrow_drop_down,
                      size: 30, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Blog',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text(
                        'Urdu Poets',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text(
                        'Classroom Presentation',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 50, top: 0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide())),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text("Log in",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff1D5E4A))),
                      )),
                ),
              ],
            )
          ]),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 244, left: 294, top: 99, bottom: 126),
                child: Container(
                  color: Color.fromRGBO(29, 94, 74, 0.12),
                  height: 380,
                  width: 1400,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 31, top: 30),
                            child: Container(
                              height: 30,
                              width: 400,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Name*",
                                    fillColor: Colors.green,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20),
                                      borderSide: new BorderSide(),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Name cannot be a empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 33,
                              top: 30,
                            ),
                            child: Container(
                              height: 30,
                              width: 250,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Pin Code*",
                                    fillColor: Colors.green,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20),
                                      borderSide: new BorderSide(),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Pin cannot be a empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 31, top: 15),
                            child: Container(
                              height: 30,
                              width: 325,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Phone*",
                                    fillColor: Colors.green,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20),
                                      borderSide: new BorderSide(),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Number cannot be a empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 33,
                              top: 15,
                            ),
                            child: Container(
                              height: 30,
                              width: 325,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Email Adredss*",
                                    fillColor: Colors.green,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20),
                                      borderSide: new BorderSide(),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Email cannot be a empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 31, top: 15),
                            child: Container(
                              height: 30,
                              width: 660,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "School Name*",
                                    fillColor: Colors.green,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20),
                                      borderSide: new BorderSide(),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Name cannot be a empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 31, top: 15),
                            child: Container(
                              height: 30,
                              width: 400,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Password*",
                                    fillColor: Colors.green,
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20),
                                      borderSide: new BorderSide(),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "PassWord cannot be a empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 33,
                              top: 15,
                            ),
                            child: Container(
                              height: 30,
                              width: 250,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Conform Password*",
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20),
                                      borderSide: new BorderSide(
                                          color: Color(0xff1D5E4A)),
                                    )),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Password cannot be a empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 13, right: 8, bottom: 10),
                                child: Checkbox(
                                  value: value,
                                  onChanged: (newValue) {
                                    setState(() {
                                      value = newValue!;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Container(
                                  margin: EdgeInsets.only(left: 0),
                                  child: Text(
                                    "All Content Is Provided for Educational PurposeOnly.Its Not Allowed to Make Copies Or  Use It.\nFor Any Commercial Purpose Without Permision.",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                    // textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40, //height of button
                            width: 100, //width of button
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: changeButton
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.black,
                                    )
                                  : ElevatedButton(
                                      onPressed: () {
                                        if (value == true) {}
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0xff1D5E4A),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              side: BorderSide())),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: Text(
                                          "Register",
                                        ),
                                      )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 0),
                            child: Text(
                              "Already Have Account ?",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, MyRoutes.LoginPage);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Text(
                                  'Login Now',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff1D5E4A)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
