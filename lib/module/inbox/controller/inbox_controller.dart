import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core.dart';
import '../view/inbox_view.dart';

class InboxController extends State<InboxView> {
  static late InboxController instance;
  late InboxView view;

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
