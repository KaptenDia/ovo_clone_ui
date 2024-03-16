import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ovo_clone_ui/core.dart';

class OtpView extends StatefulWidget {
  final bool isForgetPassword;
  const OtpView({Key? key, required this.isForgetPassword}) : super(key: key);

  Widget build(context, OtpController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
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
        child: SingleChildScrollView(
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
                    otpIllustration,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'OTP Verification',
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
                  'An authentication code has been sent to dkatia*******il.com',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    color: greyColor,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 56,
                ),
                Center(
                  child: Text(
                    'Enter OTP',
                    style: primaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: purple,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Pinput(
                    keyboardType: TextInputType.number,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    listenForMultipleSmsOnAndroid: true,
                    separatorBuilder: (index) => const SizedBox(width: 8),
                    crossAxisAlignment: CrossAxisAlignment.center,
                    validator: (value) {
                      return value == '1234' ? null : 'Pin is incorrect';
                    },
                    // onClipboardFound: (value) {
                    //   debugPrint('onClipboardFound: $value');
                    //   pinController.setText(value);
                    // },
                    hapticFeedbackType: HapticFeedbackType.lightImpact,
                    onCompleted: (pin) {
                      debugPrint('onCompleted: $pin');
                    },
                    onChanged: (value) {
                      debugPrint('onChanged: $value');
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 72),
                  child: PrimaryButton(
                    text: 'Verify',
                    onTap: () {
                      isForgetPassword
                          ? Get.offAll(const ResetPasswordView())
                          : Get.offAll(const SetPasswordView());
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
      ),
    );
  }

  @override
  State<OtpView> createState() => OtpController();
}
