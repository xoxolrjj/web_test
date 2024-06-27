import 'dart:ui';

import 'package:architecture/app/constants/colors.dart';
import 'package:architecture/app/constants/hero_images.dart';
import 'package:architecture/app/constants/strings.dart';
import 'package:architecture/app/widgets/search_field.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                ),
                child: CarouselSlider.builder(
                  itemCount: imagePaths.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    var e = imagePaths[itemIndex];
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 100,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(),
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 50,
                          blurRadius: 8,
                          offset: Offset(0, 6))
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0.0,
                right: 0.0,
                child: SearchField(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
