import '../../../core/util/responsive/responsive_layout.dart';
import './common/section_header.dart';
import '../../utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class CommunitySection extends StatelessWidget {
  const CommunitySection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(heading: "Community"),
        _buildResponsiveCommunityWidget(context),
      ],
    );
  }

  Widget _buildResponsiveCommunityWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const ScrollLoopAutoScroll(
        gap: 0,
        delayAfterScrollInput: Duration(seconds: 8),
        delay: Duration(seconds: 0),
        duration: Duration(minutes: 10),
        scrollDirection: Axis.horizontal,
        child: _LogoWidget(),
      ),
    );
  }
}

class _LogoWidget extends StatelessWidget {
  const _LogoWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: communityLogos.map((e) {
        return Container(
            width:
                MediaQuery.of(context).size.width / _getNumberOfLogos(context),
            alignment: Alignment.center,
            child: Image.asset(
              e,
              fit: BoxFit.fill,
              height: heightOfCommunityLogo,
            ));
      }).toList(),
    );
  }

  int _getNumberOfLogos(BuildContext context) => isDesktop(context)
      ? noOfCommunityLogosDesktop
      : isTablet(context)
          ? noOfCommunityLogosTablet
          : noOfCommunityLogosMobile;
}
