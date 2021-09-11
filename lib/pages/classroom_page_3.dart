import 'package:flutter/material.dart';
//import 'package:urooj_web/footer.dart';
import 'package:urooj_web_page/pages/footer.dart';

class ClassroomPresentaion3 extends StatelessWidget {
  const ClassroomPresentaion3({Key? key}) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '←',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      "حضرت ابوبکر صدیق ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20),
                    child: Text("Published on :02/02/2020"),
                  ),
                ],
              ),
              Column(
                children: [
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff1D5E4A),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide())),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Icon(
                                    Icons.library_books_outlined,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text("Open",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      )),
                                )
                              ])),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff1D5E4A),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide())),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: Icon(
                                    Icons.download_for_offline,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("Download",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      )),
                                )
                              ])),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Divider(
                        color: Colors.black,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff1D5E4A),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide())),
                                    child: Row(children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 0.0),
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Text("Prev",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            )),
                                      )
                                    ])),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff1D5E4A),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          side: BorderSide())),
                                  child: Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: Text("Next",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 19.0),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                  ])),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Footer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}