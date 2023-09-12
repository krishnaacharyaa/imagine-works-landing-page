import '../../../core/util/responsive/responsive_layout.dart';
import './common/section_header.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class SubFeature extends StatelessWidget {
  const SubFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(heading: subFeatureHeading),
        _buildResponsiveSubFeatureWidget(context)
      ],
    );
  }

  Widget _buildResponsiveSubFeatureWidget(BuildContext context) {
    return !isMobile(context)
        ? const Row(
            children: [
              Flexible(child: _FeatureWidget(gifPath: subFeatureGIF1)),
              SizedBox(width: 56),
              Flexible(child: _FeatureWidget(gifPath: subFeatureGIF2))
            ],
          )
        : const Column(
            children: [
              _FeatureWidget(gifPath: subFeatureGIF1),
              SizedBox(height: 32),
              _FeatureWidget(gifPath: subFeatureGIF2)
            ],
          );
  }
}

class _FeatureWidget extends StatelessWidget {
  final String gifPath;
  const _FeatureWidget({required this.gifPath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: curvedBorderRadius,
        child: Image.asset(
          gifPath,
          fit: BoxFit.fill,
          height: heightOfsubFeatureGIF,
        ));
  }
}
