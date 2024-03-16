import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  Widget build(context, ResetPasswordController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        width: Get.width,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            tileMode: TileMode.clamp,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.85, 1],
            colors: [
              whiteColor,
              const Color(0xff40128B).withOpacity(0.1),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                  resetPasswordIllustration,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Reset password',
                style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: purple,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Create new password for your account',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomFormField(
                labelText: 'Enter new Password',
                svgIcon: eyeSvg,
                labelColor: blackColor,
                greyBorder: true,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomFormField(
                labelText: 'Enter confirm password',
                svgIcon: phoneSvg,
                labelColor: blackColor,
                greyBorder: true,
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 72),
                child: PrimaryButton(
                  text: 'CONFIRM',
                  onTap: () {
                    Get.offAll(const LoginView());
                  },
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ResetPasswordView> createState() => ResetPasswordController();
}
