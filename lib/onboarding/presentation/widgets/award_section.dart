import 'package:imagine_works_landing_page/core/util/entities.dart';
import '../../../core/util/responsive/responsive_layout.dart';
import '../../../core/util/responsive/responsive_text.dart';
import '../../../core/util/responsive/responsive_text_style.dart';
import '../../domain/model/award_model.dart';
import './common/call_out_button.dart';
import './common/section_header.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';

class AwardsSection extends StatelessWidget {
  const AwardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SectionHeader(heading: "Awards"),
        _buildResponsiveAwardsWidget(context)
      ],
    );
  }

  Widget _buildResponsiveAwardsWidget(BuildContext context) {
    return !isMobile(context)
        ? IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: awards
                  .map(
                      (award) => Flexible(child: _AwardCard(awardModel: award)))
                  .toList(),
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:
                awards.map((award) => _AwardCard(awardModel: award)).toList(),
          );
  }
}

class _AwardCard extends StatelessWidget {
  final AwardModel awardModel;
  const _AwardCard({required this.awardModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: !isMobile(context)
            ? const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0)
            : const EdgeInsets.symmetric(horizontal: 8, vertical: 8.0),
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                awardModel.imageUrl,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              ResponsiveText(
                text: awardModel.title,
                textStyle: getResponsiveTextStyle(context, AppTextTheme.title),
              ),
              const SizedBox(
                height: 32,
              ),
              const SizedBox(
                  width: double.infinity,
                  child: AppOutlineButton(text: learnMore))
            ],
          ),
        ),
      ),
    );
  }
}
