import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';
import '../controller/pay_controller.dart';

class PayView extends StatefulWidget {
  const PayView({Key? key}) : super(key: key);

  Widget build(context, PayController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<PayView> createState() => PayController();
}
