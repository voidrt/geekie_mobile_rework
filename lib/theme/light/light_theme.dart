import 'package:flutter/material.dart';
import 'package:geekreep/theme/light/colors.dart';
import 'package:geekreep/theme/text_theme.dart';

class Light {
  static var appTheme = ThemeData(
    fontFamily: 'Exo',
    scaffoldBackgroundColor: LightThemeColours.background,
    textTheme: const TextTheme(
      displaySmall: GeekieTextStyle.subtitleText,
      displayMedium: GeekieTextStyle.standardText,
      headlineSmall: GeekieTextStyle.headlineText,
    ),
    colorScheme: const ColorScheme.light(
      primary: LightThemeColours.primary,
      secondary: LightThemeColours.secondary,
      surface: LightThemeColours.background,
      inverseSurface: LightThemeColours.black,
      onSurface: LightThemeColours.white,
      shadow: LightThemeColours.black,
    ),
    dividerTheme: const DividerThemeData(
      thickness: 0.5,
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    buttonTheme: const ButtonThemeData(
      splashColor: Colors.transparent,
    ),
  );
}
