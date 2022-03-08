// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/home.dart';
import 'package:absensi_qr/widgets/formprofil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.03),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.1),
                      child: Container(
                        width: size.width * 0.35,
                        height: size.height * 0.2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/profpic.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.07, left: size.width * 0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              "Your Name",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Container(
                              child: const Text(
                                "Status",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.06,
              width: size.width * 0.85,
              decoration: BoxDecoration(color: Color(kFourthColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    child: Image(
                      image: AssetImage("assets/images/add_photo.png"),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Pasang Photo Profil",
                      style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Akun Ngabsen",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Color(kThirdColor),
                        ),
                      ),
                    ),
                    Container(
                      child: FormProfil(),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (c) => Home(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.1,
                        bottom: size.height * 0.1,
                        left: size.width * 0.1),
                    child: Container(
                      height: size.height * 0.1,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(kSecondColor),
                      ),
                      child: Image(
                        image: AssetImage("assets/images/back.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: Container(
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins', color: Color(kThirdColor)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
