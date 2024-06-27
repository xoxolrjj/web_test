import 'dart:ui';

import 'package:architecture/app/constants/colors.dart';
import 'package:architecture/app/constants/strings.dart';
import 'package:architecture/app/widgets/app_text.dart';
import 'package:architecture/app/widgets/featured_listing.dart';
import 'package:architecture/app/widgets/header_desktop.dart';
import 'package:architecture/app/widgets/hero_section.dart';
import 'package:architecture/app/widgets/listing_widget.dart';
import 'package:architecture/presentation/home/controllers/home_controller.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import 'package:flutter/material.dart';
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
                FarmerText(
                  text: 'PROJECTS',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blue,
                ),
                FarmerText(
                  text: 'Perspectives by ERA Research & Market Intelligence',
                  fontSize: 4.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
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
          SizedBox(
            height: 10.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 55.0),
            child: FarmerText(
                text: 'FEATURED LISTINGS',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.blue),
          ),

          FeaturedListing(featuredItems: FeaturedProperty.featuredProperties),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed('/pre_selling');
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FarmerText(
                    text: 'SEE MORE LISTINGS',
                    fontSize: 5.sp,
                    color: AppColors.red,
                  ),
                  Icon(FluentIcons.chevron_right_24_regular, size: 5.sp)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 55.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FarmerText(
                    text: 'COMPANY NEWS',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blue),
                FarmerText(
                  text: 'Latest news and updates from ERA PH',
                  fontSize: 4.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
 // Container(
          //   margin: EdgeInsets.symme tric(horizontal: 55.0),
          //   child: Row(
          //     children: [
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           FarmerText(
          //               text: 'Featured Listings',
          //               fontSize: 10.sp,
          //               fontWeight: FontWeight.w500,
          //               color: AppColors.blue),
          //           SizedBox(
          //             height: 20.h,
          //           ),
          //           Image.asset(
          //             'assets/images/C1.jpg',
          //             width: 70.w,
          //             height: 200.h,
          //             fit: BoxFit.cover,
          //           ),
          //           Text(
          //             'BEACHFRONT IN BATANGAS',
          //             style: TextStyle(
          //                 fontSize: 5.sp,
          //                 color: AppColors.red,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //           Row(
          //             children: [
          //               Text('6'),
          //               SizedBox(
          //                 width: 1.w,
          //               ),
          //               SvgPicture.asset(
          //                 'assets/icons/bed.svg',
          //                 width: 22.w,
          //                 height: 22.h,
          //               ),
          //               SizedBox(
          //                 width: 3.w,
          //               ),
          //               Text('3'),
          //               SizedBox(
          //                 width: 1.w,
          //               ),
          //               SvgPicture.asset(
          //                 'assets/icons/car.svg',
          //                 width: 20.w,
          //                 height: 20.h,
          //               ),
          //               SizedBox(
          //                 width: 3.w,
          //               ),
          //               Text('3'),
          //               SizedBox(
          //                 width: 1.w,
          //               ),
          //               SvgPicture.asset(
          //                 'assets/icons/bathtub.svg',
          //                 width: 15.w,
          //                 height: 15.h,
          //               ),
          //               SizedBox(
          //                 width: 3.w,
          //               ),
          //               Text('3'),
          //               SizedBox(
          //                 width: 1.w,
          //               ),
          //               SvgPicture.asset(
          //                 'assets/icons/sqm.svg',
          //                 width: 15.w,
          //                 height: 15.h,
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),