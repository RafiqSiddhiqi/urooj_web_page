import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:urooj_web_page/utils/routes.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Color(0xff1D5E4A),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 0, left: 0),
                  child: Text(
                    "Useful Links",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {Navigator.pushNamed(context, MyRoutes.BlogPage);},
                    child: Text(
                      "\nBlog",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {Navigator.pushNamed(context, MyRoutes.PodcastPage);},
                    child: Text(
                      "\nPodcast",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {Navigator.pushNamed(context, MyRoutes.ClassroompresentationPage);},
                    child: Text(
                      "\nClassroom Presentation",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {Navigator.pushNamed(context, MyRoutes.videoPage);},
                    child: Text(
                      "\nVideo",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {Navigator.pushNamed(context, MyRoutes.WorksheetPage);},
                    child: Text(
                      "\nWorksheet",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {Navigator.pushNamed(context, MyRoutes.PoetsPage);},
                    child: Text(
                      "\nUrdu Poets",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: 10, right: 0, left: 0, bottom: 0),
                  child: Text(
                    "Contact Us ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
                Column(
                  children: [
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 0, right: 0),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 200, left: 10),
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.whatsapp,
                            ),
                            iconSize: 40,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            onPressed: () {},
                          )),
                      Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 200),
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.twitter,
                            ),
                            iconSize: 40,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            onPressed: () {},
                          )),
                      Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 200),
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.map,
                            ),
                            iconSize: 40,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            onPressed: () {},
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            bottom: 200,
                          ),
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.facebook,
                              // Icons.facebook_outlined,
                            ),
                            iconSize: 40,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            onPressed: () {},
                          )),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}