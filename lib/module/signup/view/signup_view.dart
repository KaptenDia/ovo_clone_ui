import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  Widget build(context, SignupController controller) {
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
                  signUpIllustration,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Sign up',
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
                'let\'s get started with creating your account',
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
                inputTextColor: blackColor,
                textInputType: TextInputType.emailAddress,
                greyBorder: true,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomFormField(
                labelText: 'Enter your mobile number',
                textInputType: TextInputType.phone,
                svgIcon: phoneSvg,
                labelColor: blackColor,
                inputTextColor: blackColor,
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
                      isForgetPassword: false,
                    ));
                  },
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have account ? ',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toReplacement(const LoginView());
                    },
                    child: Text(
                      'login',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: toscaGreenColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SignupView> createState() => SignupController();
}
