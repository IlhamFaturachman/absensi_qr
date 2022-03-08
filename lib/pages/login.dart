// ignore_for_file: avoid_unnecessary_containers

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/widgets/form_login.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

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
                      width: size.width * 0.55,
                      height: size.height * 0.3,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Group 15.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 0.055, size.height * 0.2, 0, 0),
                    child: Container(
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.05),
              child: FormLogin(
                usernamecontroller: usernamecontroller,
                passwordcontroller: passwordcontroller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
