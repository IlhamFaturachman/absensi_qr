// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:flutter/material.dart';

class CardRiwayat extends StatefulWidget {
  const CardRiwayat(
      {Key? key,
      required this.gambar,
      required this.kelas,
      required this.matapelajaran,
      required this.jam,
      required this.hari,
      required this.tanggal})
      : super(key: key);

  final String gambar, kelas, matapelajaran, jam, hari, tanggal;

  @override
  _CardRiwayatState createState() => _CardRiwayatState();
}

class _CardRiwayatState extends State<CardRiwayat> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.05),
            child: Container(
              height: size.height * 0.15,
              width: size.width * 0.75,
              decoration: const BoxDecoration(),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Container(
                        child: Image(
                          image: AssetImage(widget.gambar),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            widget.kelas,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            widget.matapelajaran,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                           Text(
                            widget.jam,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                color: Color(kThirdColor)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.09),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                           Text(
                            widget.hari,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Color(kThirdColor),
                            ),
                          ),
                           Text(
                            widget.tanggal,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Color(kThirdColor),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
