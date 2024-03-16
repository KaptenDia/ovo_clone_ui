import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';
import '../view/otp_view.dart';

class OtpController extends State<OtpView> {
  static late OtpController instance;
  late OtpView view;

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
