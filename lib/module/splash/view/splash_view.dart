import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: purple,
        ),
        child: Center(
          child: Image.asset(logoIcons),
        ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
