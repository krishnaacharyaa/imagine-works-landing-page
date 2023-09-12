import 'package:imagine_works_landing_page/core/util/entities.dart';
import '../../../core/util/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

TextStyle getResponsiveTextStyle(
    BuildContext context, AppTextTheme appTextTheme) {
  return _getTextStyle(context, appTextTheme) ?? const TextStyle();
}

TextStyle? _getTextStyle(BuildContext context, AppTextTheme appTextTheme) {
  if (isDesktop(context)) {
    return _getTextStyleForDesktop(context, appTextTheme);
  }
  if (isTablet(context)) {
    return _getTextStyleForTablet(context, appTextTheme);
  }
  return _getTextStyleForMobile(context, appTextTheme);
}

TextStyle? _getTextStyleForDesktop(
    BuildContext context, AppTextTheme appTextTheme) {
  final ThemeData theme = Theme.of(context);

  switch (appTextTheme) {
    case AppTextTheme.display:
      return theme.textTheme.displayLarge;
    case AppTextTheme.headline:
      return theme.textTheme.headlineLarge;
    case AppTextTheme.title:
      return theme.textTheme.titleLarge;
    case AppTextTheme.label:
      return theme.textTheme.labelLarge;
  }
}

TextStyle? _getTextStyleForTablet(
    BuildContext context, AppTextTheme appTextTheme) {
  final ThemeData theme = Theme.of(context);

  switch (appTextTheme) {
    case AppTextTheme.display:
      return theme.textTheme.displayMedium;
    case AppTextTheme.headline:
      return theme.textTheme.headlineMedium;
    case AppTextTheme.title:
      return theme.textTheme.titleMedium;
    case AppTextTheme.label:
      return theme.textTheme.labelMedium;
  }
}

TextStyle? _getTextStyleForMobile(
    BuildContext context, AppTextTheme appTextTheme) {
  final ThemeData theme = Theme.of(context);

  switch (appTextTheme) {
    case AppTextTheme.display:
      return theme.textTheme.displaySmall;
    case AppTextTheme.headline:
      return theme.textTheme.headlineSmall;
    case AppTextTheme.title:
      return theme.textTheme.titleMedium;
    case AppTextTheme.label:
      return theme.textTheme.labelMedium;
  }
}
