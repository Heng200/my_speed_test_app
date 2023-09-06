import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_speed_test_app/constants/enum/text_enum.dart';
import 'package:my_speed_test_app/constants/text_size.dart';
import 'package:my_speed_test_app/shared/themes/theme_data.dart';

class CCTextStyle {
  CCTextStyle._();

  static TextStyle tiny({
    Color? color,
    CCTextSizeEnum fontSize = CCTextSizeEnum.tiny,
    bool isBold = false,
  }) {
    return basedTextStyle(
      color: color ?? Get.context!.textTertiaryColor,
      fontSize: fontSize.value,
      isBold: isBold,
    );
  }

  static TextStyle caption({
    Color? color,
    CCTextSizeEnum fontSize = CCTextSizeEnum.caption,
    bool isBold = false,
  }) {
    return basedTextStyle(
      color: color ?? Get.context!.textSecondaryColor,
      fontSize: fontSize.value,
      isBold: isBold,
    );
  }

  static TextStyle body({
    Color? color,
    CCTextSizeEnum fontSize = CCTextSizeEnum.body,
    bool isBold = false,
  }) {
    return basedTextStyle(
      color: color,
      fontSize: fontSize.value,
      isBold: isBold,
    );
  }

  static TextStyle subtitle({
    Color? color,
    CCTextSizeEnum fontSize = CCTextSizeEnum.subtitle,
    bool isBold = false,
  }) {
    return basedTextStyle(
      color: color,
      fontSize: fontSize.value,
      isBold: isBold,
    );
  }

  static TextStyle title({
    Color? color,
    CCTextSizeEnum fontSize = CCTextSizeEnum.title,
    bool isBold = false,
  }) {
    return basedTextStyle(
      color: color,
      fontSize: fontSize.value,
      isBold: isBold,
    );
  }

  static TextStyle custom({
    Color? color,
    double fontSize = TextSize.TEXT_SIZE_BODY,
    bool isBold = false,
    double? height,
    TextDecoration? decoration,
  }) {
    return basedTextStyle(
      color: color,
      fontSize: fontSize,
      isBold: isBold,
      height: height,
      decoration: decoration,
    );
  }

  static TextStyle basedTextStyle({
    Color? color,
    required double fontSize,
    bool isBold = false,
    double? height,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: 'Cellcard',
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      fontSize: fontSize,
      color: color,
      height: height,
      decoration: decoration,
    );
  }
}
