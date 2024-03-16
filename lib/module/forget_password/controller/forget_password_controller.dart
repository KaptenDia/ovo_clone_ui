import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';
import '../view/forget_password_view.dart';

class ForgetPasswordController extends State<ForgetPasswordView> {
  static late ForgetPasswordController instance;
  late ForgetPasswordView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
