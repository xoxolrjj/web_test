import 'package:architecture/app/constants/colors.dart';
import 'package:architecture/app/constants/strings.dart';
import 'package:architecture/app/widgets/app_text.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FeaturedItem extends StatelessWidget {
  FeaturedItem({super.key, required this.featuredProperty, this.onTap});

  final Function()? onTap;
  final FeaturedProperty featuredProperty;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              featuredProperty.image,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.h),
            FarmerText(
              text: featuredProperty.type,
              fontSize: 6.sp,
              color: AppColors.red,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: [
                      FarmerText(
                        text: '${featuredProperty.beds}',
                        fontSize: 3.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                      SizedBox(width: 1.w),
                      SvgPicture.asset(
                        featuredProperty.bed,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ],
                  ),
                  SizedBox(width: 2.w),
                  Row(
                    children: [
                      FarmerText(
                        text: '${featuredProperty.cars}',
                        fontSize: 3.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                      SizedBox(width: 1.w),
                      SvgPicture.asset(
                        featuredProperty.car,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ],
                  ),
                  SizedBox(width: 2.w),
                  Row(
                    children: [
                      FarmerText(
                        text: '${featuredProperty.baths}',
                        fontSize: 3.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                      SizedBox(width: 1.w),
                      SvgPicture.asset(
                        featuredProperty.bath,
                        width: 15.w,
                        height: 15.h,
                      ),
                    ],
                  ),
                  SizedBox(width: 2.w),
                  Row(
                    children: [
                      FarmerText(
                        text: '${featuredProperty.areas} sqm',
                        fontSize: 3.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                      SizedBox(width: 1.w),
                      SvgPicture.asset(
                        featuredProperty.area,
                        width: 15.w,
                        height: 15.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Flexible(
              child: Text(
                featuredProperty.description,
                style: TextStyle(
                  fontSize: 3.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 20.h),
            FarmerText(
              text: '₱${featuredProperty.price}',
              fontSize: 6.sp,
              color: AppColors.red,
              fontWeight: FontWeight.w500,
            ),
   
          ],
        ),
      ),
    );
  }
}
