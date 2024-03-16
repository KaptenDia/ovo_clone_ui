import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core/theme/theme_config.dart';
import 'package:ovo_clone_ui/state_util.dart';

class GreenButton extends StatelessWidget {
  const GreenButton({super.key, required this.text, required this.onTap});
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 44,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: toscaGreenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          text,
          style: primaryTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
