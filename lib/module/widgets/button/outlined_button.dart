import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core/theme/theme_config.dart';
import 'package:ovo_clone_ui/state_util.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({super.key, required this.onTap});
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 44,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          side: BorderSide(
            color: whiteColor,
          ),
        ),
        onPressed: onTap,
        child: Text(
          'SIGN IN',
          style: primaryTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
