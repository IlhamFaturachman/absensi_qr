import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/home.dart';
import 'package:absensi_qr/pages/notifikasi.dart';
import 'package:absensi_qr/pages/riwayat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavbarQr extends StatefulWidget {
  const NavbarQr({ Key? key }) : super(key: key);

  @override
  _NavbarQrState createState() => _NavbarQrState();
}

class _NavbarQrState extends State<NavbarQr> {

  int currentIndex = 1;
  final screens = [
    RiwayatAbsen(),
    Home(),
    Notifikasi()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(kFirstColor),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.text_badge_checkmark), label: "Riwayat"),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Beranda"),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell), label: "Notifikasi"),
        ],
      ),
    );
  }
}