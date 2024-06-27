import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class RadioButton extends StatelessWidget {
  final value;
  final groupValue;
  final Function? onChanged;
  const RadioButton(
      {super.key,
      required this.value,
      required this.groupValue,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Radio(          value: value,
          groupValue: groupValue,
          onChanged: (value) {
            onChanged!(value) ?? '';
          }),
    );
  }
}
