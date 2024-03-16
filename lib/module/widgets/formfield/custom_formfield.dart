import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ovo_clone_ui/core/theme/theme_config.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      required this.labelText,
      required this.svgIcon,
      this.labelColor,
      this.greyBorder,
      this.isPassword = false,
      this.inputTextColor,
      this.textInputType});
  final String labelText;
  final String svgIcon;
  final Color? labelColor;
  final Color? inputTextColor;
  final TextInputType? textInputType;
  final bool? greyBorder;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 36.0),
          child: Text(
            labelText,
            style: primaryTextStyle.copyWith(
              color: labelColor ?? whiteColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          children: [
            SvgPicture.asset(
              svgIcon,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: TextFormField(
                keyboardType: textInputType,
                obscureText: isPassword,
                style: primaryTextStyle.copyWith(color: inputTextColor),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyBorder == true ? greyColor : whiteColor,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyBorder == true ? greyColor : whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
