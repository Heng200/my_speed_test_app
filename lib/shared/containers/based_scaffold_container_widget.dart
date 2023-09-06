import 'package:flutter/material.dart';
import 'package:my_speed_test_app/shared/widgets/appbar_widget.dart';

class BasedScaffoldComponent extends StatelessWidget {
  const BasedScaffoldComponent({
    super.key,
    required this.body,
    this.title,
    this.actionWidgetList,
    this.backgroundColor,
    this.onBackPressed,
  });

  final String? title;
  final Widget body;
  final List<Widget>? actionWidgetList;
  final Color? backgroundColor;
  final void Function()? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: title != null
          ? PreferredSize(
              preferredSize: const Size.fromHeight(55),
              child: CCAppbar(
                title: title!,
                actionBar: actionWidgetList,
                onBackPressed: onBackPressed,
              ),
            )
          : null,
      body: body,
    );
  }
}
