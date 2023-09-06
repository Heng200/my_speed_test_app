import 'package:flutter/material.dart';
import 'package:my_speed_test_app/shared/widgets/appbar_widget.dart';

class BasedContainerComponent extends StatelessWidget {
  BasedContainerComponent({
    super.key,
    required this.body,
    this.actionBar,
    this.title,
    this.isRoot = false,
  });

  final Widget body;
  final List<Widget>? actionBar;
  late final String? title;
  final bool isRoot;

  @override
  Widget build(BuildContext context) {
    Widget header = const SizedBox();

    if (title != null) {
      header = CCAppbar(isRoot: isRoot, title: title!, actionBar: actionBar);
    }

    return Column(
      children: [header, Expanded(child: body)],
    );
  }
}
