// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWelcome extends StatefulWidget {
  const CarouselWelcome({Key? key}) : super(key: key);

  @override
  _CarouselWelcomeState createState() => _CarouselWelcomeState();
}

class _CarouselWelcomeState extends State<CarouselWelcome> {
  final _urlImages = [
    'assets/images/qrsmk.png',
    'assets/images/qrsmk.png',
    'assets/images/qrsmk.png',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            height: size.height * 1,
            color: Colors.yellow,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: false,
              ),
              itemCount: _urlImages.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  
                  child: Container(
                    child: Image(
                      image: AssetImage(_urlImages[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
