import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        width: Get.width,
        height: double.infinity,
        decoration: BoxDecoration(
          color: purple,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ovoIcons,
              ),
              const SizedBox(
                height: 120,
              ),
              CustomFormField(
                labelText: 'Enter your e-mail ID',
                svgIcon: userSvg,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 36,
                ),
                child: OutlineButton(
                  onTap: () {
                    Get.to(const PasswordView());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 54,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: whiteColor,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'OR',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        color: whiteColor,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 36,
                ),
                child: GreenButton(
                  text: 'SIGN UP',
                  onTap: () {
                    Get.to(const SignupView());
                  },
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Need help?',
                  style: primaryTextStyle.copyWith(
                    color: darkGreenColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
