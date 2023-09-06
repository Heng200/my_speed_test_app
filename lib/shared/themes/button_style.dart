import 'package:flutter/material.dart';

class CCButtonStyle {
  CCButtonStyle._();

  static ButtonStyle roundStyle({
    Color? backgroundColor,
    bool isFull = false,
    EdgeInsets? padding,
    required double borderRadius,
  }) {
    return ButtonStyle(
      fixedSize: isFull
          ? MaterialStateProperty.all(
              const Size(
                double.maxFinite,
                double.infinity,
              ),
            )
          : null,
      padding: MaterialStateProperty.all(
        padding ??
            const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 8,
              bottom: 8,
            ),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        backgroundColor,
      ),
    );
  }

  static ButtonStyle outlineStyle({
    Color borderColor = Colors.black,
    bool isFull = false,
    Color? backgroundColor,
    required double borderRadius,
    EdgeInsets? padding,
  }) {
    return ButtonStyle(
      fixedSize: isFull
          ? MaterialStateProperty.all(
              const Size(
                double.maxFinite,
                double.infinity,
              ),
            )
          : null,
      padding: MaterialStateProperty.all(
        padding ??
            const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      side: MaterialStateProperty.all(
        BorderSide(color: borderColor),
      ),
      backgroundColor: MaterialStateProperty.all(backgroundColor),
    );
  }
}
