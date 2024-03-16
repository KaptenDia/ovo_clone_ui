import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';
import '../view/security_code_view.dart';

class SecurityCodeController extends State<SecurityCodeView> {
  static late SecurityCodeController instance;
  late SecurityCodeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var inputText = "";
  var actives = [false, false, false, false, false, false];
  var clears = [false, false, false, false, false, false];
  var value = [1, 2, 3, 4, 5, 6];
  var currentIndex = 0;
  var messages = "";

  buttonNumbers() {
    setState(() {
      actives[currentIndex] = true;
      currentIndex++;
    });
  }

  resetNumbers() {
    setState(() {
      clears = clears.map((e) => true).toList();
      actives = actives.map((e) => false).toList();
    });
    inputText = "";
    currentIndex = 0;
    return;
  }

  deleteNumbers() {
    setState(() {
      clears[currentIndex] = true;
      actives[currentIndex] = false;
    });
    return;
  }
}
