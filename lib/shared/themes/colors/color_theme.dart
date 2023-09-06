// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class ColorTheme {
  ColorTheme._();

  static const Color COLOR_LIGHT = Color(0xFFFFFFFF);
  static const Color COLOR_DARK = Color(0xFF000000);

  static const Color COLOR_SECONDARY = Color.fromARGB(255, 134, 83, 1);
  static const Color COLOR_LIGHT_BLUE = Color(0xFFACD6EC);

  ///Recommend using [ContextThemeExt.primaryColor] to support dynamic theme
  static const Color COLOR_PRIMARY = Color(0xFFF6A000);

  static const Color COLOR_LIGHT_PRIMARY = Color(0xFFFFCC80);

  ///Recommend using [ContextThemeExt.secondaryColor] to support dynamic theme
  static const Color COLOR_BLUE = Color(0xFF008dd4);

  ///---------------------------LIGHT THEME CODE BELOW--------------------------

  ///color used by Light Theme [CCTheme.lightTheme]
  ///Recommend using [ContextThemeExt.tertiaryColor] to support dynamic theme
  static const Color colorLightPink = Color(0xFFD62C88);
  static const Color colorGreen = Color(0xFF0c9ba3);

  ///color used by Light Theme [CCTheme.lightTheme]
  ///Recommend using [ContextThemeExt.backgroundColor] to support dynamic theme
  static const Color colorLightBackground = Color(0xFFF5F6FB);

  ///color used by Light Theme [CCTheme.lightTheme]
  ///Recommend using [ContextThemeExt.cardColor] to support dynamic theme
  static const Color colorLightCard = Color(0xFFFFFFFF);

  ///color used by Light Theme [CCTheme.lightTheme]
  ///Recommend using [ContextThemeExt.textPrimaryColor] to support dynamic theme
  static const Color colorLightTextPrimary = Color(0xFF3C3C3C);

  ///color used by Light Theme [CCTheme.lightTheme]
  ///Recommend using [ContextThemeExt.textSecondaryColor] to support dynamic theme
  static const Color colorLightTextSecondary = Color(0xFF606060);

  ///color used by Light Theme [CCTheme.lightTheme]
  ///Recommend using [ContextThemeExt.textTertiaryColor] to support dynamic theme
  static const Color colorLightTextTertiary = Color(0xFF747474);

  ///color used by Light Theme [CCTheme.lightTheme]
  ///Recommend using [ContextThemeExt.errorColor] to support dynamic theme
  static const Color colorLightDanger = Color(0xFFFF0000);

  ///color used by Light Theme [CCTheme.lightTheme]
  ///Recommend using [ContextThemeExt.disableColor] to support dynamic theme
  static const Color colorLightDisable = Color(0XFFD9D9D9);

  ///---------------------------DARK THEME CODE BELOW---------------------------

  ///color used by Light Theme [CCTheme.lightTheme]
  ///Recommend using [ContextThemeExt.tertiaryColor] to support dynamic theme
  static const Color colorDarkPink = Color(0xFFD62C88);

  ///color used by Dark Theme [CCTheme.darkTheme]
  ///Recommend using [ContextThemeExt.backgroundColor] to support dynamic theme
  static const Color colorDarkBackground = Color(0xFF121212);

  ///color used by Light Theme [CCTheme.darkTheme]
  ///Recommend using [ContextThemeExt.cardColor] to support dynamic theme
  static const Color colorDarkCard = Color(0xFF2E2E2E);

  ///color used by Light Theme [CCTheme.darkTheme]
  ///Recommend using [ContextThemeExt.textPrimaryColor] to support dynamic theme
  static const Color colorDarkTextPrimary = Color(0xFFE0E0E0);

  ///color used by Light Theme [CCTheme.darkTheme]
  ///Recommend using [ContextThemeExt.textSecondaryColor] to support dynamic theme
  static const Color colorDarkTextSecondary = Color(0xFF9E9D9D);

  ///color used by Light Theme [CCTheme.darkTheme]
  ///Recommend using [ContextThemeExt.textTertiaryColor] to support dynamic theme
  static const Color colorDarkTextTertiary = Color(0xFF666666);

  ///color used by Light Theme [CCTheme.darkTheme]
  ///Recommend using [ContextThemeExt.errorColor] to support dynamic theme
  static const Color colorDarkDanger = Color(0xFFDA384C);

  ///color used by Light Theme [CCTheme.darkTheme]
  ///Recommend using [ContextThemeExt.disableColor] to support dynamic theme
  static const Color colorDarkDisable = Color(0XFFD9D9D9);
}

extension ColorExtension on Color {
  String toHexCode() {
    return '#${value.toRadixString(16)}';
  }
}
