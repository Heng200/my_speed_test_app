import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_speed_test_app/constants/constant.dart';
import 'package:my_speed_test_app/constants/enum/text_enum.dart';
import 'package:my_speed_test_app/shared/themes/button_style.dart';
import 'package:my_speed_test_app/shared/themes/colors/color_theme.dart';
import 'package:my_speed_test_app/shared/themes/theme_data.dart';
import 'package:my_speed_test_app/shared/widgets/text_widget.dart';

class CCButton {
  CCButton._();

  static Widget text(
    String text, {
    Function()? onPressed,
    Color? textColor,
    double margin = 0,
    bool? isBold,
  }) {
    textColor ??= ColorTheme.COLOR_DARK;
    isBold ??= false;

    return Padding(
      padding: EdgeInsets.all(margin),
      child: TextButton(
        onPressed: onPressed,
        child: CCText.body(
          text,
          color: textColor,
          isBold: isBold,
        ),
      ),
    );
  }

  static Widget outline(
    String text, {
    Function()? onPressed,
    Color? textColor,
    Color? backgroundColor,
    Color? borderColor,
    double margin = 0,
    CCTextSizeEnum fontSize = CCTextSizeEnum.subtitle,
    bool isFull = false,
    bool isBold = false,
    double borderRadius = Const.BORDER_RADIUS,
    EdgeInsets? padding,
  }) {
    borderColor ??= Get.context!.outlineColor;
    textColor ??= Get.context!.outlineColor;

    final Widget titleWidget;
    if (fontSize == CCTextSizeEnum.subtitle) {
      titleWidget = CCText.subtitle(text, color: textColor, isBold: isBold);
    } else if (fontSize == CCTextSizeEnum.title) {
      titleWidget = CCText.title(text, color: textColor, isBold: isBold);
    } else if (fontSize == CCTextSizeEnum.caption) {
      titleWidget = CCText.caption(text, color: textColor, isBold: isBold);
    } else {
      titleWidget = CCText.body(text, color: textColor, isBold: isBold);
    }

    return Padding(
      padding: EdgeInsets.only(
        left: margin,
        top: margin,
        bottom: margin,
        right: margin,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: CCButtonStyle.outlineStyle(
          isFull: isFull,
          backgroundColor: backgroundColor,
          borderColor: borderColor,
          borderRadius: borderRadius,
          padding: padding,
        ),
        child: titleWidget,
      ),
    );
  }

  static Widget roundIcon(
    Widget icon, {
    Function()? onPressed,
    Color? backgroundColor,
    Color? textColor,
    double margin = 0,
  }) {
    backgroundColor ??= Get.context!.secondaryColor;
    textColor ??= ColorTheme.COLOR_LIGHT;

    final Widget button = IconButton(onPressed: onPressed, icon: icon);

    return Material(
      color: backgroundColor,
      shape: const CircleBorder(),
      child: Padding(
        padding: EdgeInsets.only(
          left: margin,
          top: margin,
          bottom: margin,
          right: margin,
        ),
        child: button,
      ),
    );
  }

  static Widget round(
    String text, {
    Function()? onPressed,
    Color? backgroundColor,
    Color? textColor,
    double margin = 0,
    Widget? icon,
    CCTextSizeEnum fontSize = CCTextSizeEnum.subtitle,
    bool isFull = false,
    bool isDisabled = false,
    bool? isBold,
    int? maxLines,
    double borderRadius = Const.BORDER_RADIUS,
    EdgeInsets? padding,
  }) {
    backgroundColor ??=
        isDisabled ? ColorTheme.COLOR_LIGHT_BLUE : Get.context!.secondaryColor;
    textColor ??= ColorTheme.COLOR_LIGHT;
    isBold ??= false;
    final Widget titleWidget;
    if (fontSize == CCTextSizeEnum.subtitle) {
      titleWidget = CCText.subtitle(
        text,
        color: textColor,
        isBold: isBold,
        maxLines: maxLines,
      );
    } else if (fontSize == CCTextSizeEnum.title) {
      titleWidget = CCText.title(
        text,
        color: textColor,
        isBold: isBold,
        maxLines: maxLines,
      );
    } else if (fontSize == CCTextSizeEnum.caption) {
      titleWidget = CCText.caption(
        text,
        color: textColor,
        isBold: isBold,
        maxLines: maxLines,
      );
    } else {
      titleWidget = CCText.body(
        text,
        color: textColor,
        isBold: isBold,
        maxLines: maxLines,
      );
    }

    final Widget button;
    if (icon != null) {
      button = TextButton.icon(
        onPressed: isDisabled ? null : onPressed,
        style: CCButtonStyle.roundStyle(
          backgroundColor: backgroundColor,
          borderRadius: borderRadius,
          padding: padding,
        ),
        icon: icon,
        label: titleWidget,
      );
    } else {
      button = TextButton(
        onPressed: isDisabled ? null : onPressed,
        style: CCButtonStyle.roundStyle(
          backgroundColor: backgroundColor,
          isFull: isFull,
          borderRadius: borderRadius,
          padding: padding,
        ),
        child: titleWidget,
      );
    }

    return Padding(
      padding: EdgeInsets.only(
        left: margin,
        top: margin,
        bottom: margin,
        right: margin,
      ),
      child: button,
    );
  }
}
