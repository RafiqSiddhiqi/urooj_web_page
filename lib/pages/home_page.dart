import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:urooj_web_page/pages/footer.dart';
import 'package:urooj_web_page/pages/login_page.dart';
import 'package:urooj_web_page/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:urooj_web_page/utils/routes.dart';

//import 'utils/routes.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  get fit => null;
  String name = "";
  late SharedPreferences logindata;
  late String username;
  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString("username")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
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
                    Navigator.pushNamed(context, MyRoutes.BlogPage);
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
                    Navigator.pushNamed(context, MyRoutes.PoetsPage);
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
                    Navigator.pushNamed(
                        context, MyRoutes.ClassroompresentationPage);
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
                padding: const EdgeInsets.only(left: 50, top: 5),
                // ignore: deprecated_member_use
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide())),
                  onPressed: () {
                    logindata.setBool('login', true);
                    Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => LoginPage()));
                  },
                  child: Text('LogOut',
                      style: TextStyle(fontSize: 15, color: Color(0xff1D5E4A))),
                ),
              )

              /*ElevatedButton(
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
                      child: Text("Log out",
                          style: TextStyle(
                              fontSize: 15, color: Color(0xff1D5E4A))),
                    )
                    ),*/
            ],
          )),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 40),
                        child: Text(
                          "Urooj Academy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Text(
                          "An Onright: 200line Platform for teachers\nTo Get Quality Content",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 100),
                            child: SizedBox(
                              width: 300,
                              height: 30,
                              child: new ListTile(
                                title: new TextFormField(
                                  decoration: new InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    hintText: 'Search',
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(left: 225),
                                      child: Icon(Icons.search,
                                          size: 30, color: Colors.green),
                                    ),
                                  ),

                                  // onChanged: onSearchTextChanged,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, MyRoutes.RegistrationPage);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff1D5E4A),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide())),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Text(
                                "Register Now",
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 290, top: 40),
                  child: Image.asset(
                    "assets/images/urooj.png",
                    fit: BoxFit.cover,
                    height: 250,
                    width: 400,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 400,
                width: 1100,
                child: Container(
                  child: VxArc(
                      height: 40,
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      child: Container(
                        color: const Color.fromRGBO(29, 94, 74, 0.12),
                        width: context.screenWidth,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 80,
                              ),
                              child: Image.asset(
                                "assets/images/fruit.png",
                                fit: BoxFit.cover,
                                height: 250,
                                width: 400,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 50,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, right: 100),
                                    child: Text(
                                      " What Is Urooj Academy",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 80),
                                    child: Text(
                                      " Urooj Academy is unique platform for teachers, students\n and parents. Here we provide ample learning\n opportunities for teachers and students. Teachers will get\n quality content for their professional development as well\n as Teaching like classroom presentations, lesson plans,\n activities and much more. And it is all free.\n Students will also get digital learning experience. Like\n video, audio, printable worksheets etc",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 240,
                                      top: 20,
                                    ),
                                    child: ElevatedButton(
                                        onPressed: () {
         // Navigator.pushNamed(context, MyRoutes.homePage2);
         Navigator.pushNamed(context, MyRoutes.ClassroompresentationPage);

                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0xff1D5E4A),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                side: BorderSide())),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6),
                                          child: Text(
                                            "Classroom Presentaion",
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
              ),
              child: Center(
                child: Text(
                  "why it is so great ?",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60, top: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 250,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Card(
                        //backgroundcolor: rgba(29, 94, 74, 0.12);
                        color: const Color.fromRGBO(29, 94, 74, 0.12),
                        child: Column(
                          children: [
                            Center(
                              child: Icon(Icons.account_balance_wallet_rounded,
                                  size: 60, color: Color(0xff1D5E4A)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Total Free",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Providing all the\ncontent totally free\nof cost!",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Card(
                        //backgroundcolor: rgba(29, 94, 74, 0.12);
                        color: Color(0xff1D5E4A),
                        child: Column(
                          children: [
                            Center(
                              child: Icon(Icons.image_aspect_ratio_outlined,
                                  size: 60, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Visualization",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Visual content with\nphotos that students\nrelate quickly.",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Card(
                        //backgroundcolor: rgba(29, 94, 74, 0.12);
                        color: const Color.fromRGBO(29, 94, 74, 0.12),
                        child: Column(
                          children: [
                            Center(
                              child: Icon(Icons.language,
                                  size: 60, color: Color(0xff1D5E4A)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Language",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0, top: 10),
                              child: Text(
                                "Specially focused on\nurdu medium\nstudents.",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 330,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Card(
                        //backgroundcolor: rgba(29, 94, 74, 0.12);
                        color: Color(0xff1D5E4A),
                        child: Column(
                          children: [
                            Center(
                              child: Icon(Icons.check,
                                  size: 60, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Easy",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 0, bottom: 25),
                              child: Text(
                                "\n    Handy website helps \n    you to use very easily.",
                                // textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
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
            /* Card(
                child: Column(
              children: [
                
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Contact Us ",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 200),
                  child: Divider(
                    height: 20,
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                      "feel free to send any query, we will surely reply back.",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      )),
                ),
              ],
            ))*/

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 400,
                width: 1050,
                child: Container(
                  child: VxArc(
                    height: 20,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      color: const Color.fromRGBO(29, 94, 74, 0.12),
                      width: context.screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 400,
                              width: 330,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Card(
                                  //backgroundcolor: rgba(29, 94, 74, 0.12);
                                  color: const Color.fromRGBO(29, 94, 74, 0.12),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 0),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/images/videos.png",
                                              fit: BoxFit.cover,
                                              height: 200,
                                              width: 330,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          "Interactive Videos",
                                          // textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          "Learn in an Interactive way\nby watching videos. Click\nbelow to know  .",
                                          // textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 140, top: 20),
                                        child: SizedBox(
                                          height: 20,
                                          width: 85,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              // Navigator.pushNamed(
                                              //     context, MyRoutes.podCasts);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 0.0),
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 400,
                              width: 330,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Card(
                                  //backgroundcolor: rgba(29, 94, 74, 0.12);
                                  color: const Color.fromRGBO(29, 94, 74, 0.12),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 0),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/images/mic.png",
                                              fit: BoxFit.cover,
                                              height: 200,
                                              width: 330,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          "Podcasts in Urdu",
                                          // textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          "Learning should never stop.\nNow learn by listening to\npodcast.",
                                          // textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 140, top: 20),
                                        child: SizedBox(
                                          height: 20,
                                          width: 85,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              // Navigator.pushNamed(
                                              //     context, MyRoutes.podCasts);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 0.0),
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 400,
                              width: 330,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Card(
                                  //backgroundcolor: rgba(29, 94, 74, 0.12);
                                  color: const Color.fromRGBO(29, 94, 74, 0.12),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 0),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/images/write.png",
                                              fit: BoxFit.cover,
                                              height: 200,
                                              width: 330,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          "Worksheets for practice",
                                          // textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          "Dont just learn but practice\non the way with free\nworksheets.",
                                          // textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 140, top: 20),
                                        child: SizedBox(
                                          height: 20,
                                          width: 85,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1D5E4A),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    side: BorderSide())),
                                            onPressed: () {
                                              // Navigator.pushNamed(
                                              //     context, MyRoutes.podCasts);
                                            },
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 0.0),
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 460,
                width: 1000,
                child: Card(
                  color: const Color.fromRGBO(29, 94, 74, 0.12),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 460,
                        width: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 50,
                                top: 20,
                              ),
                              child: Text(
                                "Contact Us ",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, right: 40),
                              child: Divider(
                                height: 20,
                                thickness: 1,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50, right: 20),
                              child: Text(
                                  "feel free to send any query, we will surely reply back.",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 20, right: 20),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter Email",
                                      labelText: "Email",
                                      fillColor: Color(0xff1D5E4A),
                                      border: new OutlineInputBorder(
                                        borderRadius:
                                            new BorderRadius.circular(40),
                                        borderSide: new BorderSide(),
                                      )),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email cannot be a empty";
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    name = value;
                                    setState(() {});
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 20, right: 20),
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter Subject",
                                      labelText: "Subject",
                                      fillColor: Color(0xff1D5E4A),
                                      border: new OutlineInputBorder(
                                        borderRadius:
                                            new BorderRadius.circular(40),
                                        borderSide: new BorderSide(),
                                      )),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Subject cannot be a empty";
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    name = value;
                                    setState(() {});
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Container(
                                margin: EdgeInsets.all(12),
                                height: 100,
                                child: TextField(
                                  maxLines: 200,
                                  decoration: InputDecoration(
                                      hintText: "How Can I Help You ?",
                                      fillColor: Color(0xff1D5E4A),
                                      border: new OutlineInputBorder(
                                        borderRadius:
                                            new BorderRadius.circular(35),
                                        borderSide: new BorderSide(),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 10, left: 30, right: 200),
                              child: SizedBox(
                                height: 28,
                                width: 84,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff1D5E4A),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            side: BorderSide())),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: Text("Submit"),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 30),
                        child: Image.asset(
                          "assets/images/map.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Footer(),
          ]),
        ),
      ),
    ));
  }
}
