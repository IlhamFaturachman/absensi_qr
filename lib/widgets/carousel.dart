// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselHome extends StatefulWidget {
  const CarouselHome({Key? key}) : super(key: key);

  @override
  _CarouselHomeState createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  final _urlImages = [
    'assets/images/pkk1.png',
    'assets/images/welcome.png',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.5,
          child: CarouselSlider.builder(
            options: CarouselOptions(
              autoPlay: true,
              enableInfiniteScroll: false,
            ),
            itemCount: _urlImages.length,
            itemBuilder: (context, index, realIndex) {
              return Column(
                children: [
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            _urlImages[index],
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.06),
                    child: Center(
                      child: AnimatedSmoothIndicator(activeIndex: index, count: _urlImages.length,)
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
