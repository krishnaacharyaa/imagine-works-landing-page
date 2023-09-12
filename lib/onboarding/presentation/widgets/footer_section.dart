import '../../../core/util/entities.dart';
import '../../../core/util/responsive/responsive_layout.dart';
import '../../../core/util/responsive/responsive_text.dart';
import '../../../core/util/responsive/responsive_text_style.dart';
import './common/call_out_button.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildResponsiveFooter(context);
  }

  Widget _buildResponsiveFooter(BuildContext context) {
    return !isMobile(context)
        ? const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: _FooterTitle(),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: _NavItemsAndLogosWidget()),
              AppFilledButton()
            ],
          )
        : const Column(
            children: [
              _FooterTitle(),
              SizedBox(height: 16),
              _NavItemsAndLogosWidget(),
              SizedBox(height: 16),
              AppFilledButton()
            ],
          );
  }
}

class _FooterTitle extends StatelessWidget {
  const _FooterTitle();

  @override
  Widget build(BuildContext context) {
    return ResponsiveText(
        text: footerTitle,
        textStyle: getResponsiveTextStyle(context, AppTextTheme.label));
  }
}

class _NavItemsAndLogosWidget extends StatelessWidget {
  const _NavItemsAndLogosWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 16,
          children: footerItems
              .map((e) => ResponsiveText(
                  text: e,
                  textStyle:
                      getResponsiveTextStyle(context, AppTextTheme.label)))
              .toList(),
        ),
        !isMobile(context)
            ? const SizedBox(height: 16)
            : const SizedBox(height: 8),
        Wrap(
          spacing: 16,
          alignment: WrapAlignment.center,
          children:
              footerSocialMediaLogos.map((e) => SvgPicture.asset(e)).toList(),
        )
      ],
    );
  }
}
