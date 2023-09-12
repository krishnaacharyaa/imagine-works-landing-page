import 'package:flutter/material.dart';

import '../../../../core/util/entities.dart';
import '../../../../core/util/responsive/responsive_text_style.dart';

class AppOutlineButton extends StatelessWidget {
  final String? text;
  const AppOutlineButton({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            side: BorderSide(color: Theme.of(context).primaryColor)),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            text ?? "Login",
            style: getResponsiveTextStyle(context, AppTextTheme.title),
          ),
        ));
  }
}

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            "Join the Beta",
            style: getResponsiveTextStyle(context, AppTextTheme.title),
          ),
        ));
  }
}
