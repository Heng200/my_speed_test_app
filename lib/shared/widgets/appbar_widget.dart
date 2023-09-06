import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_speed_test_app/shared/widgets/text_widget.dart';

class CCAppbar extends StatelessWidget {
  const CCAppbar({
    super.key,
    required this.title,
    this.actionBar,
    this.isRoot = false,
    this.onBackPressed});

    final String title;
    final List<Widget>? actionBar;
    final bool isRoot;
    final void Function() ? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isRoot == false ? arrowBackButton(): null,
      elevation: 0,
      title: CCText.subtitle(title, isBold: true),
      actions: actionBar,
    );
  }

    IconButton arrowBackButton() {
    return IconButton(
      onPressed: () {
        if (onBackPressed == null) {
          Get.back();
        } else {
          onBackPressed?.call();
        }
      },
      icon: const Icon(Icons.arrow_back_rounded)    );
  }
}
