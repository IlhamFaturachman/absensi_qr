// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/home.dart';
import 'package:absensi_qr/widgets/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({
    key,
    required this.usernamecontroller,
    required this.passwordcontroller,
  }) : super(key: key);

  final TextEditingController usernamecontroller;
  final TextEditingController passwordcontroller;

  @override
  _FormLoginState createState() => _FormLoginState();
}

final _formKey = GlobalKey<FormState>();

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(kFourthColor),
          ),
          height: size.height * 0.45,
          width: size.width * 0.8,
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.06,
                        ),
                        child: Container(
                          child: const Text(
                            "Silahkan masukkan Username Dan",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: const Text(
                          "Password anda",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.03,
                      ),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          height: size.height * 0.1,
                          width: size.width * 0.75,
                          child: Row(
                            children: [
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/profil.png"),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Username",
                                    style: TextStyle(
                                        color: Color(kThirdColor),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.5,
                                    child: TextFormField(
                                      controller: widget.usernamecontroller,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                      ),
                                      validator: MultiValidator([
                                        RequiredValidator(
                                            errorText: "Masukkan Email"),
                                        MinLengthValidator(6,
                                            errorText:
                                                "Username Setidaknya 6 Karakter")
                                      ]),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.04,
                      ),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          height: size.height * 0.1,
                          width: size.width * 0.75,
                          child: Row(
                            children: [
                              Container(
                                height: size.height * 0.2,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/password.png"),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    "Password",
                                    style: TextStyle(
                                        color: Color(kThirdColor),
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.5,
                                    child: TextFormField(
                                      controller: widget.passwordcontroller,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                      ),
                                      validator: MultiValidator([
                                        RequiredValidator(
                                            errorText: "Masukkan Password"),
                                        MinLengthValidator(8,
                                            errorText:
                                                "Kata sandi harus setidaknya 8 karakter"),
                                      ]),
                                      obscureText: true,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.025),
          child: Container(
            height: size.height * 0.06,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(kThirdColor)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => NavbarQr(),
                  ),
                );
              },
              child: Text(
                "Login",
                style: TextStyle(color: Color(kFirstColor)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
