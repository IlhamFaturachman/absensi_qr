// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:absensi_qr/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormProfil extends StatefulWidget {
  const FormProfil({Key? key}) : super(key: key);

  @override
  _FormProfilState createState() => _FormProfilState();
}

class _FormProfilState extends State<FormProfil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.03),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Nama Pengguna",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.85,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(kSecondColor)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(kSecondColor))),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.03),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Tanggal Lahir",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.85,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(kSecondColor)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(kSecondColor))),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.03),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Asal Sekolah",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.85,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(kSecondColor)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(kSecondColor))),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.03),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Kelas",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.85,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(kSecondColor)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(kSecondColor))),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.03),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.85,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(kSecondColor)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(kSecondColor))),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Masukkan Email"),
                        MinLengthValidator(6,
                            errorText: "Username Setidaknya 6 Karakter")
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
