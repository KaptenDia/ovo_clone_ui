import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';

class PasswordView extends StatefulWidget {
  const PasswordView({Key? key}) : super(key: key);

  Widget build(context, PasswordController controller) {
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
                labelText: 'Enter your password',
                svgIcon: lockSvg,
                isPassword: true,
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 36,
                ),
                child: GreenButton(
                  text: 'LOGIN',
                  onTap: () {
                    Get.to(const SecurityCodeView());
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
                    'Forgot your ',
                    style: primaryTextStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toReplacement(const ForgetPasswordView());
                    },
                    child: Text(
                      'password?',
                      style: primaryTextStyle.copyWith(
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
      bottomNavigationBar: SizedBox(
        width: Get.width,
        height: 80,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkGreenColor,
          ),
          onPressed: () {
            Get.back();
          },
          child: Text(
            'Switch to another account',
            style: primaryTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<PasswordView> createState() => PasswordController();
}
