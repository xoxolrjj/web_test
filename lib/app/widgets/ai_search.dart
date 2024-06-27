import 'package:architecture/app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AiSearch extends StatelessWidget {
  const AiSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Try AI Search',
            hintStyle: TextStyle(color: AppColors.hint),
            suffixIcon: Icon(CupertinoIcons.forward),
            filled: true,
            fillColor: AppColors.textFieldBackground,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
