import 'package:architecture/app/constants/colors.dart';
import 'package:architecture/app/constants/nav_list.dart';
import 'package:architecture/app/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(horizontal: 55.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/ERA_72dpi-01.jpg',
            height: 100.h,
            fit: BoxFit.cover,
          ),
          const Spacer(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < navList.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          navList[i],
                          style: GoogleFonts.raleway(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.red, width: 5),
                borderRadius: BorderRadius.circular(10),
                color: AppColors.red,
              ),
              child: TextButton(
                onPressed: () {},
                child: FarmerText(
                  text: 'AGENT/BROKER LOGIN',
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 3.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
