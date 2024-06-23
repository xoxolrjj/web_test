import 'package:architecture/app/constants/colors.dart';
import 'package:architecture/presentation/home/controllers/home_controller.dart';
import 'package:architecture/router/route_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ListingCard extends GetView<HomeController> {
  final String image;
  final String label;

  const ListingCard({required this.image, required this.label});
  void _navigate() {
    String route = '';
    switch (label) {
      case 'PRE-SELLING':
        route = RouteString.preslling;
        break;
      //list all the label here
    }
    if (route.isNotEmpty) {
      Get.toNamed(route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _navigate,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 10.0,
              left: 10.0,
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(10.0, 10.0),
                      blurRadius: 3.0,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
