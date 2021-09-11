import 'package:flutter/material.dart';
import 'package:urooj_web_page/pages/blog_page.dart';
import 'package:urooj_web_page/pages/cardpage.dart';
import 'package:urooj_web_page/pages/classroom_page.dart';
import 'package:urooj_web_page/pages/classroom_page_3.dart';
import 'package:urooj_web_page/pages/classroom_present_page.dart';
import 'package:urooj_web_page/pages/footer.dart';
import 'package:urooj_web_page/pages/home_page.dart';
import 'package:urooj_web_page/pages/login_page.dart';
import 'package:urooj_web_page/pages/podcast_page.dart';
import 'package:urooj_web_page/pages/poets_page.dart';
import 'package:urooj_web_page/pages/registration_page.dart';
import 'package:urooj_web_page/pages/reset_page.dart';
import 'package:urooj_web_page/pages/single_blog_page.dart';
import 'package:urooj_web_page/pages/sub_podcast_page.dart';
import 'package:urooj_web_page/pages/sub_video_page.dart';
import 'package:urooj_web_page/pages/video_page.dart';
import 'package:urooj_web_page/pages/worksheet_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UROOJ ACADEMY',
        theme: ThemeData(primarySwatch: Colors.green),
        home: Homepage(),
        debugShowCheckedModeBanner: false,
        initialRoute: "/loginpage",
        routes: {
          "/home": (context) => Homepage(),
          "/footer": (context) => Footer(),
          "/subvideopage": (context) => SubvideoPage(),
          "/videopage": (context) => VideoPage(),
          "/worksheet": (cnotesgenerontext) => WorksheetPage(),
          "/classroomsubpage": (context) => ClassroomPage(),
          "/subpodcast": (context) => SubpodcastPage(),
          "/poetspage": (context) => PoetsPage(),
          "/singleblogpage": (context) => SingleblogPage(),
          "/card": (context) => CardPage(),
          "/classroompresentation": (context) => ClassroompresentationPage(),
          "/resetpage": (context) => ResetPage(),
          "/registrationpage": (context) => RegistrationPage(),
          "/loginpage": (context) => LoginPage(),
          "/classroom3": (context) => ClassroomPresentaion3(),
          "/podcast": (context) => PodcastPage(),
          "/blogpage": (context) => BlogPage(),
        });
  }
}
