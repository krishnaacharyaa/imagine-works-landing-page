import 'package:flutter/material.dart';

import '../../../core/util/entities.dart';
import '../../../core/util/responsive/responsive_text.dart';
import '../../../core/util/responsive/responsive_text_style.dart';
import '../../utils/constants.dart';
import './common/section_header.dart';

class AboutSection extends StatelessWidget {
  final GlobalKey aboutKey;
  const AboutSection({super.key, required this.aboutKey});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: aboutKey,
      children: [
        const SectionHeader(heading: "About Us"),
        ResponsiveText(
            text: aboutUsString,
            textStyle: getResponsiveTextStyle(context, AppTextTheme.title))
      ],
    );
  }
}
