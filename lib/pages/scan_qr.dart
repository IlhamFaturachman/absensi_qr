// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/home.dart';
import 'package:flutter/material.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({Key? key}) : super(key: key);

  @override
  _ScanQrState createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.height * 0.25,
                width: size.width * 0.3,
                child: Image(
                  image: AssetImage("assets/images/profpic.png"),
                ),
              )
            ],
          ),
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Scan QR Code",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: size.height * 0.6,
                child: Image(
                  image: AssetImage("assets/images/qrcode.png"),
                ),
              ),
              Container(
                height: size.height * 0.3,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(kFirstColor),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Your Code",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        color: Color(kThirdColor),
                      ),
                    ),
                    Text(
                      "Hasil Dari Qr Code Akan Segera Tampil",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: size.height * 0.17,
                            width: size.width * 0.2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(kSecondColor)),
                            child: Center(
                              child: Text("...",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins')),
                            ),
                          ),
                          Container(
                            height: size.height * 0.17,
                            width: size.width * 0.2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(kSecondColor)),
                            child: Center(
                              child: Text("...",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins')),
                            ),
                          ),
                          Container(
                            height: size.height * 0.17,
                            width: size.width * 0.2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(kSecondColor)),
                            child: Center(
                              child: Text("...",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins')),
                            ),
                          ),
                          Container(
                            height: size.height * 0.17,
                            width: size.width * 0.2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(kSecondColor)),
                            child: Center(
                              child: Text("...",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins')),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
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
                          top: size.height * 0.1, bottom: size.height * 0.1, left: size.width * 0.1),
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
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
