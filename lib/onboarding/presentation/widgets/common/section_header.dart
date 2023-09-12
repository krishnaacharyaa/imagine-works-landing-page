import 'package:flutter/material.dart';

import '../../../../core/util/entities.dart';
import '../../../../core/util/responsive/responsive_text.dart';
import '../../../../core/util/responsive/responsive_text_style.dart';

class SectionHeader extends StatelessWidget {
  final String heading;
  const SectionHeader({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveText(
            text: heading,
            textStyle: getResponsiveTextStyle(context, AppTextTheme.headline)),
        const SizedBox(height: 16),
        Container(
          color: Theme.of(context).primaryColor,
          height: 6,
          width: 80,
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
