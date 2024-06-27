import 'package:architecture/app/constants/colors.dart';
import 'package:architecture/app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class DropdownWidget extends StatelessWidget {
  final String title;
  final String titleDropDown;

  final List<String> items;
  final RxString selectedValue;

  const DropdownWidget(
      {super.key,
      required this.title,
      required this.items,
      required this.selectedValue,
      required this.titleDropDown});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FarmerText(
          text: title,
          fontSize: 5.sp,
        ),
        Obx(
          () => DropdownButton<String>(
              hint: FarmerText(
                  text: titleDropDown,
                  style: TextStyle(color: AppColors.white, fontSize: 3.sp)),
              value: selectedValue.value.isEmpty ? null : selectedValue.value,
              items: items
                  .map((String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: (value) {
                selectedValue.value = value ?? '';
              }),
        ),
      ],
    );
  }
}
