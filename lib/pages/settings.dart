// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:absensi_qr/constants/const.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Center(
                child: Container(
                  child: Text(
                    "Pengaturan",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.07),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Color(kFourthColor),
                      height: size.height * 0.06,
                      width: size.width * 0.75,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          "Tentang",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.1,
                                  top: size.height * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Versi",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "2. 2.0.0.2",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      //
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "Kebijakan Privasi",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.05),
                      child: Container(
                        color: Color(kFourthColor),
                        height: size.height * 0.06,
                        width: size.width * 0.75,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Bahasa",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.1,
                                  top: size.height * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      //
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Bahasa Indonesia",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      //
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "English",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.05),
                      child: Container(
                        color: Color(kFourthColor),
                        height: size.height * 0.06,
                        width: size.width * 0.75,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            "Laporkan Error",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
