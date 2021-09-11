import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urooj_web_page/pages/home_page.dart';

import 'footer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: non_constant_identifier_names
  final username_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  final password_controller = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;
  @override
  void initState() {
    super.initState();
    check_if_already_login();
  }

  // ignore: non_constant_identifier_names
  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Homepage()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

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
                  height: 320,
                  width: 1200,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 31, top: 30),
                              child: Container(
                                height: 30,
                                width: 650,
                                child: TextFormField(
                                  controller: username_controller,
                                  decoration: InputDecoration(
                                      labelText: "UserName*",
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
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 31, top: 20),
                            child: Container(
                              height: 30,
                              width: 650,
                              child: TextFormField(
                                controller: password_controller,
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
                                    return "Number cannot be a empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 50, //height of button
                            width: 150, //width of button
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 30),
                                // ignore: deprecated_member_use
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff1D5E4A),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          side: BorderSide())),
                                  onPressed: () {
                                    String username = username_controller.text;
                                    String password = password_controller.text;
                                    if (username != '' && password != '') {
                                      print('Successfull');
                                      logindata.setBool('login', false);
                                      logindata.setString('username', username);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Homepage()));
                                    }
                                  },
                                  child: Text("Log-In"),
                                )

                                /*ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff1D5E4A),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          side: BorderSide())),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: Text(
                                      "Register",
                                    ),
                                  )
                                  ),*/
                                ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 15),
                            child: Text(
                              "Forget Password?",
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
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Reset Now ',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff1D5E4A)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 15),
                            child: Text(
                              "Dont Have account?",
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
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Register Now ',
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
