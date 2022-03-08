import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/dummy/isi_riwayat.dart';
import 'package:absensi_qr/widgets/card_riwayat.dart';
import 'package:flutter/material.dart';

class RiwayatAbsen extends StatefulWidget {
  const RiwayatAbsen({Key? key}) : super(key: key);

  @override
  _RiwayatAbsenState createState() => _RiwayatAbsenState();
}

class _RiwayatAbsenState extends State<RiwayatAbsen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.1, left: size.width * 0.03),
                    child: Container(
                      width: size.width * 0.4,
                      height: size.height * 0.25,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/riwayat.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "Riwayat Aktivitas ",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          child: const Text(
                            "Absensi",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.7,
              width: size.width * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(kFourthColor),
              ),
              child: IsiRiwayat(),
            )
          ],
        ),
      ),
    );
  }
}
