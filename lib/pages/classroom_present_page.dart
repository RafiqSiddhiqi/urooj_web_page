import 'package:flutter/material.dart';
import 'package:urooj_web_page/pages/footer.dart';
//import 'package:urooj_web_page/pages/cardpage.dart';

class ClassroompresentationPage extends StatefulWidget {
  const ClassroompresentationPage({Key? key}) : super(key: key);

  @override
  _ClassroompresentationPageState createState() =>
      _ClassroompresentationPageState();
}

class _ClassroompresentationPageState extends State<ClassroompresentationPage> {
  String valueChoose = "select";
  List listItem = ['select', 'A', 'B', 'C', 'D'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff1D5E4A),
          title: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 104, top: 10),
                child: Text(
                  "Urooj Academy",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 261),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, MyRoutes.blogPage);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
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
                padding: const EdgeInsets.only(left: 25.5, top: 10),
                child: Center(
                  child: Icon(Icons.arrow_drop_down,
                      size: 30, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 53.5),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, MyRoutes.blogPage);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        'Blog',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, MyRoutes.blogPage);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        'Urdu Poets',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, MyRoutes.blogPage);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        'Classroom Presentation',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 10),
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide())),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Text("Log in",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xff1D5E4A))),
                    )),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 210,
                right: 200,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: SizedBox(
                      height: 35,
                      width: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff1D5E4A),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide())),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Text(
                      'Back to Home',
                      style: TextStyle(fontSize: 17, color: Color(0xff1D5E4A)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250, top: 20),
                    child: Text(
                      "عالمی یوم کتاب کے موقع سے",
                      style: TextStyle(fontSize: 25, color: Color(0xff1D5E4A)),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 250, top: 20),
                      child: Container(
                        width: 100,
                        color: Color(0xffF5F5F5),
                        child: DropdownButton(
                          value: valueChoose,
                          //dropdownColor: Color(0xff1D5E4A),
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xff1D5E4A),
                          ),
                          iconSize: 30,
                          isExpanded: true,
                          items: listItem.map((valueItem) {
                            return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff1D5E4A))));
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue.toString();
                            });
                          },
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 210, right: 200, top: 10),
              child: Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 350,
                        child: Card(
                            color: Color(0xffF5F5F5), //(0xffF5F5F5),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "standard2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Text(
                                        "Urdu",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1D5E4A)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: SizedBox(
                                          height: 30,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              //Navigator.pushNamed(context, MyRoutes.videoPage);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(
                                                    'Explore',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 180,
                        width: 350,
                        child: Card(
                            color: Color(0xffF5F5F5), //(0xffF5F5F5),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "standard2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Text(
                                        "Urdu",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1D5E4A)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: SizedBox(
                                          height: 30,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              //Navigator.pushNamed(context, MyRoutes.videoPage);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(
                                                    'Explore',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 180,
                        width: 350,
                        child: Card(
                            color: Color(0xffF5F5F5), //(0xffF5F5F5),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "standard2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Text(
                                        "Urdu",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1D5E4A)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: SizedBox(
                                          height: 30,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              //Navigator.pushNamed(context, MyRoutes.videoPage);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(
                                                    'Explore',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 350,
                        child: Card(
                            color: Color(0xffF5F5F5),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "standard2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Text(
                                        "Urdu",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1D5E4A)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: SizedBox(
                                          height: 30,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              //Navigator.pushNamed(context, MyRoutes.videoPage);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(
                                                    'Explore',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 180,
                        width: 350,
                        child: Card(
                            color: Color(0xffF5F5F5), //(0xffF5F5F5),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "standard2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Text(
                                        "Urdu",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1D5E4A)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: SizedBox(
                                          height: 30,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              //Navigator.pushNamed(context, MyRoutes.videoPage);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(
                                                    'Explore',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 180,
                        width: 350,
                        child: Card(
                            color: Color(0xffF5F5F5), //(0xffF5F5F5),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "standard2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Text(
                                        "Urdu",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1D5E4A)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: SizedBox(
                                          height: 30,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              //Navigator.pushNamed(context, MyRoutes.videoPage);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(
                                                    'Explore',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 350,
                        child: Card(
                            color: Color(0xffF5F5F5), //(0xffF5F5F5),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "standard2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Text(
                                        "Urdu",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1D5E4A)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: SizedBox(
                                          height: 30,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              //Navigator.pushNamed(context, MyRoutes.videoPage);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(
                                                    'Explore',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 180,
                        width: 350,
                        child: Card(
                            color: Color(0xffF5F5F5),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "standard2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Text(
                                        "Urdu",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1D5E4A)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: SizedBox(
                                          height: 30,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              //Navigator.pushNamed(context, MyRoutes.videoPage);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(
                                                    'Explore',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )))
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 180,
                        width: 350,
                        child: Card(
                            color: Color(0xffF5F5F5), //(0xffF5F5F5),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Center(
                                    child: Text(
                                      "standard2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Text(
                                        "Urdu",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Color(0xff1D5E4A)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 20),
                                      child: SizedBox(
                                          height: 30,
                                          width: 170,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              //Navigator.pushNamed(context, MyRoutes.videoPage);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Icon(
                                                    Icons
                                                        .remove_red_eye_rounded,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20),
                                                  child: Text(
                                                    'Explore',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ))),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
