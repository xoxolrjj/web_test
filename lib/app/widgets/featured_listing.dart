// import 'package:architecture/app/constants/assets.dart';
// import 'package:architecture/app/constants/colors.dart';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:google_fonts/google_fonts.dart';

// class FeaturedListing extends StatelessWidget {
//   final String? image;
//   final String text;
//   final String? availNum;
//   final String? svgIcon;
//   final String? description;
//   final String? price;
//   final double? height;
//   final double? width;
//   final TextStyle? style;
//   final double? fontSize;
//   final double? lineHeight;
//   final Color? color;
//   final FontWeight? fontWeight;
//   final TextAlign? textAlign;
//   final TextOverflow? textOverflow;
//   final TextDecoration? textDecoration;

//   const FeaturedListing(
//       {super.key,
//       this.description,
//       this.image,
//       required this.text,
//       this.price,
//       this.svgIcon,
//       this.height,
//       this.width,
//       this.style,
//       this.fontSize,
//       this.lineHeight,
//       this.color,
//       this.fontWeight,
//       this.textAlign,
//       this.textOverflow,
//       this.textDecoration,
//       this.availNum});

//   @override
//   Widget build(BuildContext context) {
//      return Container(
//       margin: EdgeInsets.symmetric(horizontal: 55.0),
//       child: SizedBox(
//         child: Row(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Image.asset(
//                   image ?? '',
//                   height: height ?? 200.h,
//                   width: width ?? Get.width,
//                   fit: BoxFit.cover,
//                 ),
//                 Text(
//                   text,
//                   textAlign: textAlign,
//                   style: style ??
//                       TextStyle(
//                           decoration: textDecoration ?? TextDecoration.none,
//                           decorationColor: color ?? AppColors.black,
//                           fontFamily: GoogleFonts.poppins(
//                                   fontWeight: fontWeight ?? FontWeight.w500)
//                               .fontFamily,
//                           fontSize: fontSize ?? 13.sp,
//                           fontWeight: fontWeight ?? FontWeight.w500,
//                           color: color ?? AppColors.white,
//                           overflow: textOverflow ?? TextOverflow.visible,
//                           height: lineHeight //?? 1.19,
//                           ),
//                 ),
//                 Row(
//                   children: [
//                     Text(availNum ?? '6'),
//                     SizedBox(
//                       width: 1.w,
//                     ),
//                     SvgPicture.asset(
//                       svgIcon ?? AppAssets.bed,
//                       height: 15.h,
//                     ),
//                     SizedBox(
//                       width: 3.w,
//                     ),
//                     SizedBox(
//                       width: 1.w,
//                     ),
//                     Text(availNum ?? '2'),
//                     SvgPicture.asset(
//                       svgIcon ?? AppAssets.car,
//                       height: 15.h,
//                     ),
//                     SizedBox(
//                       width: 1.w,
//                     ),
//                     SizedBox(
//                       width: 3.w,
//                     ),
//                     Text(availNum ?? '1'),
//                     SvgPicture.asset(
//                       svgIcon ?? AppAssets.bathtub,
//                       height: 15.h,
//                     ),
//                     SizedBox(
//                       width: 1.w,
//                     ),
//                     SizedBox(
//                       width: 3.w,
//                     ),
//                     Text(availNum ?? '1'),
//                     SvgPicture.asset(
//                       svgIcon ?? AppAssets.sqm,
//                       height: 15.h,
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:architecture/app/constants/strings.dart';
import 'package:architecture/app/widgets/featured_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FeaturedListing extends StatelessWidget {
  const FeaturedListing({super.key, required this.featuredItems});
  final List<FeaturedProperty> featuredItems;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650.h,
      margin: EdgeInsets.only(left: 25, right: 25),
      child: GridView.builder(
        padding: EdgeInsets.all(20),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.75,
        ),
        itemCount: featuredItems.length,
        itemBuilder: (context, i) => FeaturedItem(
            featuredProperty: featuredItems[i],
            onTap: () {
              Get.toNamed('/pre_selling');
              //
            }),
      ),
    );
  }
}
