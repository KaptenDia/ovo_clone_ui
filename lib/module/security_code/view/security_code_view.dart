import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';

class SecurityCodeView extends StatefulWidget {
  const SecurityCodeView({Key? key}) : super(key: key);

  Widget build(context, SecurityCodeController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: purple,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Enter Your Security Code",
                    style: primaryTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < controller.actives.length; i++)
                        AnimationBox(
                          clear: controller.clears[i],
                          active: controller.actives[i],
                          value: controller.value[i],
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    controller.messages,
                    style: primaryTextStyle.copyWith(
                      color: Colors.red[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Forget Security Code",
                    style: primaryTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: darkGreenColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.7 / 0.6,
                ),
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(4),
                  width: 50,
                  height: 50,
                  child: index == 9
                      ? const SizedBox()
                      : Center(
                          child: MaterialButton(
                            elevation: 0,
                            onPressed: () async {
                              if (index == 11) {
                                controller.inputText = controller.inputText
                                    .substring(
                                        0, controller.inputText.length - 1);
                                controller.clears.map((e) => false).toList();
                                controller.currentIndex--;
                                if (controller.currentIndex >= 0) {
                                  controller.deleteNumbers();
                                  return;
                                } else {
                                  controller.currentIndex = 0;
                                }
                                return;
                              } else {
                                controller.inputText += controller
                                    .numbers[index == 10 ? index - 1 : index]
                                    .toString();
                                if (controller.inputText == "123456") {
                                  showLoading();
                                  Future.delayed(const Duration(seconds: 3),
                                      () {
                                    Get.offAll(const MainNavigationView());
                                    hideLoading();
                                    return;
                                  });
                                  return;
                                }
                                if (controller.inputText.length == 6) {
                                  controller.messages = "Invalid Code";
                                  controller.resetNumbers();
                                  return;
                                }
                              }
                              controller.messages = "";
                              controller.clears.map((e) => false).toList();
                              controller.buttonNumbers();
                            },
                            color: purple,
                            minWidth: 50,
                            height: 55,
                            child: index == 11
                                ? Icon(
                                    Icons.backspace_sharp,
                                    color: whiteColor,
                                  )
                                : Text(
                                    "${controller.numbers[index == 10 ? index - 1 : index]}",
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 22,
                                    ),
                                  ),
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: Get.width,
        height: 80,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkGreenColor,
          ),
          onPressed: () async {
            await showDialog<void>(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Confirm'),
                  content: const SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('Are you sure you want to change account?'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: darkGreenColor,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "No",
                        style: primaryTextStyle,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        Get.offAll(const LoginView());
                      },
                      child: Text(
                        "Yes",
                        style: primaryTextStyle,
                      ),
                    ),
                  ],
                );
              },
            );
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
  State<SecurityCodeView> createState() => SecurityCodeController();
}
