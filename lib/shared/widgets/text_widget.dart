import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
import 'package:my_speed_test_app/constants/text_size.dart';
import 'package:my_speed_test_app/shared/themes/text_style.dart';

class CCText extends StatelessWidget {
  const CCText(this.text, {super.key, this.textStyle});

  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    if (textStyle == null) {
      return Text(text, style: CCTextStyle.body());
    } else {
      return Text(text, style: textStyle);
    }
  }

  static Text tiny(
    String text, {
    Color? color,
    TextAlign? textAlign,
    bool isBold = false,
    int? maxLines,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      style: CCTextStyle.tiny(color: color, isBold: isBold),
    );
  }

  static Text caption(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    bool isBold = false,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      style: CCTextStyle.caption(color: color, isBold: isBold),
    );
  }

  static Text body(
    String text, {
    Color? color,
    TextAlign? textAlign,
    bool isBold = false,
    TextOverflow? overflow,
    int? maxLines,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: CCTextStyle.body(color: color, isBold: isBold),
    );
  }

  static Text subtitle(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    bool isBold = false,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      style: CCTextStyle.subtitle(color: color, isBold: isBold),
    );
  }

  static Text title(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    bool isBold = false,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      style: CCTextStyle.title(color: color, isBold: isBold),
    );
  }

  static Text custom(
    String text, {
    Color? color,
    TextAlign? textAlign,
    bool isBold = false,
    double fontSize = TextSize.TEXT_SIZE_BODY,
    int? maxLines,
    bool isEllipsis = false,
    double? height,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: isEllipsis ? TextOverflow.ellipsis : null,
      style: CCTextStyle.custom(
        color: color,
        isBold: isBold,
        fontSize: fontSize,
        height: height,
      ),
    );
  }
}

// extension HtmlExt on Text {
//   Html toHtmlText({OnTap? onTap}) {
//     final ccTextStyle = style ?? CCTextStyle.body(isBold: true);
//     return Html(
//       data: data,
//       onLinkTap: onTap,
//       style: {
//         'body': Style(
//           color: ccTextStyle.color,
//           fontSize: FontSize(ccTextStyle.fontSize!),
//           fontFamily: ccTextStyle.fontFamily,
//           textAlign: textAlign,
//           maxLines: maxLines,
//           lineHeight: const LineHeight(1.7),
//         ),
//       },
//     );
//   }
// }
