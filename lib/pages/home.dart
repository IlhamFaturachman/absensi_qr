// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/profilpage.dart';
import 'package:absensi_qr/pages/scan_qr.dart';
import 'package:absensi_qr/pages/settings.dart';
import 'package:absensi_qr/pages/welcomepage.dart';
import 'package:absensi_qr/widgets/carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      drawer: Drawer(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => ProfilPage(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    height: size.height * 0.27,
                    width: size.width * 0.3,
                    child: Image(
                      image: AssetImage("assets/images/profpic.png"),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Your Name",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Text("Status")
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Color(kThirdColor),
              height: 15,
              indent: 30,
              endIndent: 30,
              thickness: 4,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                height: size.height * 0.15,
                decoration: BoxDecoration(
                  color: Color(kThirdColor),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                ),
                child: Center(
                  child: Text(
                    "Dashboard",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => Settings(),
                  ),
                );
              },
              child: Container(
                height: size.height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                ),
                child: Center(
                  child: Text(
                    "Settings",
                    style: TextStyle(
                        color: Color(kThirdColor),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => WelcomePage(),
                  ),
                );
              },
              child: Container(
                height: size.height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                ),
                child: Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        color: Color(kThirdColor),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.1, top: size.height * 0.1),
              child: Container(
                child: Row(
                  children: [
                    GestureDetector(
                      child: const Image(
                        image: AssetImage("assets/images/sidebar.png"),
                      ),
                      onTap: () => _scaffoldKey.currentState?.openDrawer(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.07),
                      child: Container(
                        height: size.height * 0.09,
                        width: size.width * 0.7,
                        child: TextFormField(
                          controller: searchcontroller,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.white)),
                            fillColor: Color(kFourthColor),
                            hintText: "Cari Kata Kunci",
                            hintStyle: TextStyle(color: Color(kThirdColor)),
                            filled: true,
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              color: Color(kThirdColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.1, top: size.height * 0.04),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("assets/images/hand.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.09),
                      child: Text(
                        "WELCOME, User .....",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        height: size.height * 0.1,
                        width: size.width * 0.2,
                        child: Image(
                          image: AssetImage("assets/images/profpic.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Container(
                child: Center(
                  child: Text(
                    "Yukk, Segera Absen di kelas masing-masing. Jangan sampai terlambat...",
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                  ),
                ),
              ),
            ),
            Container(
              height: size.height * 0.5,
              child: const CarouselHome(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => ScanQr(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.07),
                child: Container(
                  child: Image(
                    image: AssetImage("assets/images/qrsmk.png"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
