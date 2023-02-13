import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout/breakpoint.dart';

class ReponsiveCenter extends StatelessWidget {
  const ReponsiveCenter(
      {Key? key,
      this.maxContexntWidth = BreakPoint.tablet,
      this.padding = EdgeInsets.zero,
      required this.child})
      : super(key: key);

  final double maxContexntWidth;
  final EdgeInsetsGeometry padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: maxContexntWidth,
          child: Padding(padding: padding, child: child)),
    );
  }
}
