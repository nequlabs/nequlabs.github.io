import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedHeadline extends StatelessWidget {
  final String text;
  final TextStyle style;

  const AnimatedHeadline({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          text,
          textStyle: style,
        ),
      ],
      isRepeatingAnimation: false,
    );
  }
}
