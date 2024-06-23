import 'dart:math';
import 'dart:ui';

import 'package:architecture/app/constants/colors.dart';
import 'package:architecture/app/widgets/header_desktop.dart';
import 'package:architecture/app/widgets/hero_section.dart';
import 'package:architecture/app/widgets/listing_widget.dart';
import 'package:architecture/presentation/home/controllers/home_controller.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.white,
        onPressed: () {},
        child: Image.asset(
          "assets/icons/icons8-whatsapp-48.png",
          fit: BoxFit.cover,
        ),
      ),
      backgroundColor: AppColors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          HeaderDesktop(),
          //please check the search_field widget
          HeroSection(),
          ListingWidget(),
          //not finished
          Container(
            margin: EdgeInsets.symmetric(horizontal: 55.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PROJECTS',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blue),
                ),
                Text('Perspectives by ERA Research & Market Intelligence'),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),

          Container(
            width: 300.w,
            height: 300.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/c1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'CONNECT WORLDS, BUILD DREAMS\n         WITH ERA PHILIPPINES:\n     YOUR REAL ESTATE AGENCY\n          PARTNER FOR LIFE    ',
                          style: GoogleFonts.raleway(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white),
                        ),
                      ),
                    ),
                    //need adjustment

                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Column(
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       Image.asset(
                    //         'assets/images/ERA_72dpi-01.jpg',
                    //         width: 200.w,
                    //         height: 200.h,
                    //       ),
                    //       SizedBox(
                    //         height: 10.h,
                    //       ),
                    //       Text(
                    //         'PHILIPPINES',
                    //         style:
                    //             TextStyle(color: AppColors.white, fontSize: 4.sp),
                    //         textAlign: TextAlign.center,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 55.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FEATURED LISTINGS',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 55.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'COMPANY NEWS',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blue),
                ),
                Text('Latest news and updates from ERA PH'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
