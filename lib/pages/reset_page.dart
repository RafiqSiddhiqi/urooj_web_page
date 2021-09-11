import 'package:flutter/material.dart';
import 'package:urooj_web_page/pages/footer.dart';
//import 'package:urooj_web/footer.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 244, left: 294, top: 99, bottom: 126),
              child: Container(
                color: Color.fromRGBO(29, 94, 74, 0.12),
                height: 220,
                width: 1200,
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "Reset Password",
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
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 31, top: 30),
                      child: Container(
                        height: 30,
                        width: 650,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "Email Address*",
                              fillColor: Colors.green,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(20),
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
                  ]),
                  Row(
                    children: [
                      SizedBox(
                        height: 40, //height of button
                        width: 100, //width of button
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 34),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff1D5E4A),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide())),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text(
                                  "Login",
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff1D5E4A)),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
            Footer()
          ]),
        ),
      ),
    );
  }
}
