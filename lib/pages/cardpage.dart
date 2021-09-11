import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 210, right: 200, top: 120),
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
                          color: Colors.blue, //(0xffF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Standard",
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
                                                      BorderRadius.circular(10),
                                                  side: BorderSide())),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, MyRoutes.videoPage);
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Icon(
                                                  Icons.remove_red_eye_rounded,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
                          color: Colors.blue, //(0xffF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Standard",
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
                                                      BorderRadius.circular(10),
                                                  side: BorderSide())),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, MyRoutes.videoPage);
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Icon(
                                                  Icons.remove_red_eye_rounded,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
                          color: Colors.blue, //(0xffF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Standard",
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
                                                      BorderRadius.circular(10),
                                                  side: BorderSide())),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, MyRoutes.videoPage);
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Icon(
                                                  Icons.remove_red_eye_rounded,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
                          color: Colors.blue, //(0xffF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Standard",
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
                                                      BorderRadius.circular(10),
                                                  side: BorderSide())),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, MyRoutes.videoPage);
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Icon(
                                                  Icons.remove_red_eye_rounded,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
                          color: Colors.blue, //(0xffF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Standard",
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
                                                      BorderRadius.circular(10),
                                                  side: BorderSide())),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, MyRoutes.videoPage);
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Icon(
                                                  Icons.remove_red_eye_rounded,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
                          color: Colors.blue, //(0xffF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Standard",
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
                                                      BorderRadius.circular(10),
                                                  side: BorderSide())),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, MyRoutes.videoPage);
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Icon(
                                                  Icons.remove_red_eye_rounded,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
                          color: Colors.blue, //(0xffF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Standard",
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
                                                      BorderRadius.circular(10),
                                                  side: BorderSide())),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, MyRoutes.videoPage);
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Icon(
                                                  Icons.remove_red_eye_rounded,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
                          color: Colors.blue, //(0xffF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Standard",
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
                                                      BorderRadius.circular(10),
                                                  side: BorderSide())),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, MyRoutes.videoPage);
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Icon(
                                                  Icons.remove_red_eye_rounded,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
                          color: Colors.blue, //(0xffF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Standard",
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
                                                      BorderRadius.circular(10),
                                                  side: BorderSide())),
                                          onPressed: () {
                                            //Navigator.pushNamed(context, MyRoutes.videoPage);
                                          },
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Icon(
                                                  Icons.remove_red_eye_rounded,
                                                  color: Colors.white,
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
            ],
          ),
        ],
      ),
    );
  }
}
