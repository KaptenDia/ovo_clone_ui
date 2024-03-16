import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';
import '../view/reset_password_view.dart';

class ResetPasswordController extends State<ResetPasswordView> {
  static late ResetPasswordController instance;
  late ResetPasswordView view;

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
