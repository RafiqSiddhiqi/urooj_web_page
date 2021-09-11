import 'package:flutter/material.dart';
import 'package:urooj_web_page/pages/footer.dart';

class SubpodcastPage extends StatelessWidget {
  const SubpodcastPage({Key? key}) : super(key: key);

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
            child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 40),
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
                padding: const EdgeInsets.only(left: 15, top: 40),
                child: Text(
                  'Back to Home',
                  style: TextStyle(fontSize: 17, color: Color(0xff1D5E4A)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 350, top: 20),
                child: Text(
                  "حضرت ابوبکر صدیق",
                  style: TextStyle(fontSize: 25, color: Color(0xff1D5E4A)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 360, top: 20),
                child: Text(
                  'total 6 videos',
                  style: TextStyle(fontSize: 17, color: Color(0xff1D5E4A)),
                ),
              ),
            ],
          ),
          Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 80, right: 180, top: 5),
              child: Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
            ),
            SizedBox(
                height: 130,
                width: 600,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: Row(
                      children: [
                        Card(
                            color: Color(0xffF5F5F5),
                            child: Row(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff1D5E4A),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            side: BorderSide())),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Center(
                                        child: Icon(
                                          Icons.play_arrow_rounded,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.black,
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 40),
                                child: Icon(
                                  Icons.upload,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 130,
                                  ),
                                  child: Text(
                                    "حضرت ابوبکر صدیق",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 190),
                                  child: Text(
                                    "English name",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ])
                            ])),
                      ],
                    ))),
            Padding(
              padding: EdgeInsets.only(left: 80, right: 180, top: 60),
              child: Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80, right: 180, top: 20),
              child: Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      height: 33,
                      width: 118,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff1D5E4A),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide())),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'prev',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      height: 33,
                      width: 118,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff1D5E4A),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide())),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Footer(),
          ])
        ])));
  }
}
