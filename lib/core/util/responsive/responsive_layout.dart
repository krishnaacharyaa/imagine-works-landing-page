import 'package:imagine_works_landing_page/core/util/constants.dart';
import 'package:flutter/material.dart';

bool isMobile(BuildContext context) =>
    MediaQuery.of(context).size.width < maxMobileScreenWidth;

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width >= minTabletScreenWidth &&
    MediaQuery.of(context).size.width < maxTabletScreenWidth;

bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= minDesktopScreenWidth;
