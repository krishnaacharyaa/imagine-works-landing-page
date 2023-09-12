import '../../../core/util/entities.dart';
import '../../../core/util/responsive/responsive_text.dart';
import '../../../core/util/responsive/responsive_text_style.dart';
import '../../utils/constants.dart';
import './common/call_out_button.dart';
import '../../../core/util/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarSection extends StatelessWidget {
  final GlobalKey featureKey;
  final GlobalKey aboutKey;
  const NavBarSection(
      {super.key, required this.aboutKey, required this.featureKey});

  @override
  Widget build(BuildContext context) {
    return _buildResponsiveNavBarWidget(context);
  }

  Widget _buildResponsiveNavBarWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const _Logo(),
        if (!isMobile(context))
          _NavBarItems(aboutKey: aboutKey, featureKey: featureKey),
        !isMobile(context)
            ? const _CallOutButtons()
            : InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Icon(Icons.menu))
      ],
    );
  }
}

class _CallOutButtons extends StatelessWidget {
  const _CallOutButtons();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [AppOutlineButton(), SizedBox(width: 16), AppFilledButton()],
    );
  }
}

class _NavBarItems extends StatelessWidget {
  final GlobalKey featureKey;
  final GlobalKey aboutKey;
  const _NavBarItems({required this.aboutKey, required this.featureKey});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: navItems
            .map(
              (item) => Row(
                children: [
                  InkWell(
                    onTap: () {
                      Scrollable.ensureVisible(
                        item == product
                            ? featureKey.currentContext!
                            : item == about
                                ? aboutKey.currentContext!
                                : context,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: ResponsiveText(
                      text: item,
                      textStyle:
                          getResponsiveTextStyle(context, AppTextTheme.title),
                    ),
                  ),
                  const SizedBox(width: 16)
                ],
              ),
            )
            .toList());
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ResponsiveText(
            text: logoTitle,
            textStyle: getResponsiveTextStyle(context, AppTextTheme.headline)),
        const SizedBox(width: 16),
        SvgPicture.asset(
          logoIcon,
          height: _sizeOfLogo(context),
          width: _sizeOfLogo(context),
        ),
      ],
    );
  }
}

double _sizeOfLogo(BuildContext context) {
  if (isDesktop(context)) {
    return logoSizeDesktop;
  }
  if (isTablet(context)) {
    return logoSizeTablet;
  }
  return logoSizeMobile;
}
