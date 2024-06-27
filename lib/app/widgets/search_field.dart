import 'dart:math';

import 'package:architecture/app/constants/colors.dart';
import 'package:architecture/app/widgets/app_text.dart';

import 'package:architecture/app/widgets/dropdown_widget.dart';
import 'package:architecture/presentation/home/controllers/home_controller.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class SearchField extends GetView<HomeController> {
  final List<String> locations = [
    "New York",
    "Los Angeles",
    "Chicago",
    "Houston"
  ];
  final List<String> propertyTypes = ["Apartment", "House", "Condo", "Land"];
  final List<String> priceRanges = [
    "\$0-\$100k",
    "\$100k-\$200k",
    "\$200k-\$300k",
    "\$300k+"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 460.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: AppColors.textFieldBackground,
            width: 2.0,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(30.0),
            border:
                Border.all(color: AppColors.textFieldBackground, width: 3.0),
          ),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DropdownWidget(
                        title: 'LOCATION',
                        titleDropDown: 'Select your city',
                        items: locations,
                        selectedValue: controller.selectedLocation),
                    Container(
                      width: 3,
                      height: 70,
                      color: AppColors.white,
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    DropdownWidget(
                        title: 'PROPERTY TYPE',
                        titleDropDown: 'Select property type',
                        items: propertyTypes,
                        selectedValue: controller.selectedPropertyType),
                    Container(
                      width: 3,
                      height: 70,
                      color: AppColors.white,
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    DropdownWidget(
                        title: 'PRICE RANGE',
                        titleDropDown: 'Choose price range',
                        items: priceRanges,
                        selectedValue: controller.selectedPriceRange),
                    Obx(
                      () => Row(
                        children: [
                          Radio(
                              fillColor: WidgetStateProperty.all(Colors.white),
                              value: 1,
                              groupValue: controller.isForSale.value,
                              onChanged: (value) {
                                controller.isForSale.value = value ?? 0;
                              }),
                          FarmerText(
                              text: 'FOR SALE',
                              color: AppColors.white,
                              fontSize: 3.0.sp,
                              fontWeight: FontWeight.w600),
                          Radio(
                              fillColor: WidgetStateProperty.all(Colors.white),
                              value: 2,
                              groupValue: controller.isForSale.value,
                              onChanged: (value) {
                                controller.isForSale.value = value ?? 0;
                              }),
                          FarmerText(
                              text: 'FOR LEASE',
                              color: AppColors.white,
                              fontSize: 3.0.sp,
                              fontWeight: FontWeight.w600),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.red,
                        border: Border.all(color: AppColors.white, width: 2.0),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          FluentIcons.search_12_regular,
                          color: AppColors.white,
                          size: 35,
                        ),
                        label: FarmerText(
                          text: 'Search',
                          color: AppColors.white,
                          fontSize: 7.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Try AI Search',
                    hintStyle: TextStyle(color: AppColors.hint),
                    suffixIcon: const Icon(CupertinoIcons.forward),
                    filled: true,
                    fillColor: AppColors.textFieldBackground,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // return Stack(
    //   children: [
    //     Container(
    //       padding: EdgeInsets.all(8.0),
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(30.0),
    //         border: Border.all(
    //           color: AppColors.textFieldBackground,
    //           width: 2.0,
    //         ),
    //       ),
    //       child: Container(
    //         padding: EdgeInsets.all(16.0),
    //         decoration: BoxDecoration(
    //           color: AppColors.blue,
    //           borderRadius: BorderRadius.circular(30.0),
    //           border:
    //               Border.all(color: AppColors.textFieldBackground, width: 3.0),
    //         ),
    //         child: Column(
    //           children: [
    //             SingleChildScrollView(
    //               scrollDirection: Axis.horizontal,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Flexible(
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text('LOCATION',
    //                             style: TextStyle(
    //                                 fontWeight: FontWeight.bold,
    //                                 color: AppColors.white)),
    //                         Obx(
    //                           () => DropdownButton<String>(
    //                             isExpanded: true,
    //                             hint: Text(
    //                               'Select your city',
    //                               style: TextStyle(color: AppColors.white),
    //                             ),
    //                             value: controller.selectedLocation.value.isEmpty
    //                                 ? null
    //                                 : controller.selectedLocation.value,
    //                             items: locations
    //                                 .map((String value) =>
    //                                     DropdownMenuItem<String>(
    //                                       value: value,
    //                                       child: Text(value),
    //                                     ))
    //                                 .toList(),
    //                             onChanged: (value) {
    //                               controller.selectedLocation.value =
    //                                   value ?? '';
    //                             },
    //                           ),
    //                         )
    //                       ],
    //                     ),
    //                   ),

    // Container(
    //   width: 2,
    //   height: 50,
    //   margin: EdgeInsets.symmetric(horizontal: 16.0),
    //   color: Colors.black,
    // ),
    // Flexible(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text('PROPERTY TYPE',
    //           style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //               color: AppColors.white)),
    //       Obx(
    //         () => DropdownButton<String>(
    //           isExpanded: true,
    //           hint: Text(
    //             'Select property type',
    //             style: TextStyle(color: AppColors.white),
    //           ),
    //           value: controller
    //                   .selectedPropertyType.value.isEmpty
    //               ? null
    //               : controller.selectedPropertyType.value,
    //           items: propertyTypes
    //               .map((String value) =>
    //                   DropdownMenuItem<String>(
    //                     value: value,
    //                     child: Text(value),
    //                   ))
    //               .toList(),
    //           onChanged: (value) {
    //             controller.selectedPropertyType.value =
    //                 value ?? '';
    //           },
    //         ),
    //       )
    //     ],
    //   ),
    // ),
    // Container(
    //   width: 2,
    //   height: 50,
    //   margin: EdgeInsets.symmetric(horizontal: 16.0),
    //   color: Colors.black,
    // ),
    // Flexible(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text('PRICE RANGE',
    //           style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //               color: AppColors.white)),
    //       Obx(
    //         () => DropdownButton<String>(
    //           isExpanded: true,
    //           hint: Text(
    //             'Choose price range',
    //             style: TextStyle(color: AppColors.white),
    //           ),
    //           value:
    //               controller.selectedPriceRange.value.isEmpty
    //                   ? null
    //                   : controller.selectedPriceRange.value,
    //           items: priceRanges
    //               .map((String value) =>
    //                   DropdownMenuItem<String>(
    //                     value: value,
    //                     child: Text(
    //                       value,
    //                       style: TextStyle(
    //                         color: AppColors.black,
    //                       ),
    //                     ),
    //                   ))
    //               .toList(),
    //           onChanged: (value) {
    //             controller.selectedPriceRange.value =
    //                 value ?? '';
    //           },
    //         ),
    //       )
    //     ],
    //   ),
    // ),
    // Obx(
    //   () => Row(
    //     children: [
    //       Radio(
    //           fillColor:
    //               WidgetStateProperty.all(Colors.white),
    //           value: false,
    //           groupValue: controller.isForSale.value,
    //           onChanged: (value) {
    //             controller.radioSaleLease(false);
    //           }),
    //       Text(
    //         'FOR SALE',
    //         style: TextStyle(color: AppColors.white),
    //       ),
    //       Radio(
    //           fillColor:
    //               WidgetStateProperty.all(Colors.white),
    //           value: false,
    //           groupValue: controller.isForLease.value,
    //           onChanged: (value) {
    //             controller.radioSaleLease(true);
    //           }),
    //       Text('FOR LEASE',
    //           style: TextStyle(color: AppColors.white)),
    //     ],
    //   ),
    // ),
    // Container(
    //   margin: EdgeInsets.only(left: 15),
    //   padding: EdgeInsets.all(8),
    //   decoration: BoxDecoration(
    //       color: AppColors.red,
    //       borderRadius: BorderRadius.circular(8.0),
    //       border:
    //           Border.all(color: AppColors.white, width: 1.0)),
    //   child: TextButton.icon(
    //     onPressed: () {},
    //     icon: const Icon(FluentIcons.search_12_regular,
    //         color: Colors.white),
    //     label: const Text('SEARCH',
    //         style: TextStyle(color: Colors.white)),
    //   ),
    // ),
    //     ],
    //   ),
    // ),
    // SizedBox(height: 20.h),
    // Column(
    //   children: [
    //     TextFormField(
    //       decoration: InputDecoration(
    //         hintText: 'Try AI Search',
    //         hintStyle: TextStyle(color: AppColors.hint),
    //         suffixIcon: Icon(CupertinoIcons.forward),
    //         filled: true,
    //         fillColor: AppColors.textFieldBackground,
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(8.0),
    //           borderSide: BorderSide.none,
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
