import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';
import '../view/password_view.dart';

class PasswordController extends State<PasswordView> {
  static late PasswordController instance;
  late PasswordView view;

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
