import 'package:flutter/material.dart';
//import 'package:urooj_web/footer.dart';
import 'package:urooj_web_page/pages/footer.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  get width => null;

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
                    "All Articles ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 20),
                  child: Text("Published on :02/02/2020"),
                ),
              ],
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 105, bottom: 150, right: 165, left: 153),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/paragraph.jpg",
                              fit: BoxFit.cover,
                              width: 450,
                              height: 411,
                            ),
                            Positioned(
                              bottom: 60,
                              right: 70,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 00),
                                child: Text(
                                  'عالمی یوم کتاب کے موقع سے',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 15,
                                right: 70,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: SizedBox(
                                      height: 30,
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0xff1D5E4A),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: BorderSide())),
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: Icon(Icons.remove_red_eye,
                                                  color: Colors.white),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'Explore',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/paragraph.jpg",
                              fit: BoxFit.cover,
                              width: 450,
                              height: 211,
                            ),
                            Positioned(
                              bottom: 50,
                              right: 80,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 00),
                                child: Text(
                                  'عالمی یوم کتاب کے موقع سے',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                right: 80,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: SizedBox(
                                      height: 30,
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0xff1D5E4A),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: BorderSide())),
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: Icon(Icons.remove_red_eye,
                                                  color: Colors.white),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'Explore',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/paragraph.jpg",
                              fit: BoxFit.cover,
                              width: 450,
                              height: 200,
                            ),
                            Positioned(
                              bottom: 60,
                              right: 90,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 00),
                                child: Text(
                                  'عالمی یوم کتاب کے موقع سے',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                right: 80,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: SizedBox(
                                      height: 30,
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0xff1D5E4A),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: BorderSide())),
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: Icon(Icons.remove_red_eye,
                                                  color: Colors.white),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'Explore',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/paragraph.jpg",
                              fit: BoxFit.cover,
                              width: 450,
                              height: 200,
                            ),
                            Positioned(
                              bottom: 50,
                              right: 100,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 00),
                                child: Text(
                                  'عالمی یوم کتاب کے موقع سے',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                right: 100,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: SizedBox(
                                      height: 30,
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0xff1D5E4A),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: BorderSide())),
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: Icon(Icons.remove_red_eye,
                                                  color: Colors.white),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'Explore',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/paragraph.jpg",
                              fit: BoxFit.cover,
                              width: 450,
                              height: 200,
                            ),
                            Positioned(
                              bottom: 50,
                              right: 100,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 00),
                                child: Text(
                                  'عالمی یوم کتاب کے موقع سے',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 10,
                                right: 100,
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: SizedBox(
                                      height: 30,
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0xff1D5E4A),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: BorderSide())),
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: Icon(Icons.remove_red_eye,
                                                  color: Colors.white),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'Explore',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Footer()
          ]),
        ),
      ),
    );
  }
}