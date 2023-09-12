import 'package:imagine_works_landing_page/core/util/constants.dart';
import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const ResponsiveText({
    super.key,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}

class ResponsiveHeaderText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const ResponsiveHeaderText({
    Key? key,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> words = text.split(" ");
    final String leadingText = words[0];
    final String trailingText = words.sublist(1).join(" ");

    return RichText(
      text: TextSpan(
        style: textStyle,
        children: <TextSpan>[
          TextSpan(
            text: leadingText,
            style: textStyle.copyWith(
              color: gold,
            ),
          ),
          const TextSpan(text: " "),
          TextSpan(text: trailingText, style: textStyle),
        ],
      ),
    );
  }
}
