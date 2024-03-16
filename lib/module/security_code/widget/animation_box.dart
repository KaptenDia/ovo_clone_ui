import 'package:flutter/material.dart';
import 'package:ovo_clone_ui/core/theme/theme_config.dart';

class AnimationBox extends StatefulWidget {
  final bool clear;
  // ignore: prefer_typing_uninitialized_variables
  final value;
  final bool active;
  const AnimationBox(
      {super.key, this.clear = false, this.active = false, this.value});

  @override
  State<AnimationBox> createState() => _AnimationBoxState();
}

class _AnimationBoxState extends State<AnimationBox>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.clear) {
      animationController.forward(from: 0);
    }
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Container(
            margin: const EdgeInsets.all(14),
            child: Stack(
              children: [
                Container(),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.active ? whiteColor : Colors.white24,
                  ),
                ),
                Align(
                  alignment: Alignment(
                      0, animationController.value / widget.value - 1),
                  child: Opacity(
                    opacity: 1 - animationController.value,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.active ? whiteColor : Colors.white24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
