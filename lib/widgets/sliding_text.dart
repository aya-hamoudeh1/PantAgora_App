import 'package:flutter/material.dart';
import 'package:pantagora_app/constants.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const SelectableText(
            "PantAgora",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Lobster",
              color: kPrimaryColor,
              decoration: TextDecoration.none,
            ),
            enableInteractiveSelection: false,
          ),
        );
      },
    );
  }
}
