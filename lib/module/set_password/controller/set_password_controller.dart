import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';
import '../view/set_password_view.dart';

class SetPasswordController extends State<SetPasswordView> {
  static late SetPasswordController instance;
  late SetPasswordView view;

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
