import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  Widget build(context, ForgetPasswordController controller) {
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
                  passwordIllustration,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Forget password',
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
                'Enter your e-mail Id to Change your password',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomFormField(
                labelText: 'Enter your e-mail ID',
                svgIcon: emailSvg,
                labelColor: blackColor,
                textInputType: TextInputType.emailAddress,
                greyBorder: true,
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 72),
                child: PrimaryButton(
                  text: 'SEND OTP',
                  onTap: () {
                    Get.to(const OtpView(
                      isForgetPassword: true,
                    ));
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
  State<ForgetPasswordView> createState() => ForgetPasswordController();
}
