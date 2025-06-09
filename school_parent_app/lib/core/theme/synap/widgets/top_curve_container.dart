import 'package:flutter/material.dart';

class TopCurveContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final EdgeInsets? padding;

  const TopCurveContainer({super.key, this.height, this.width, this.child, this.padding});
  
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 20.0),
      decoration:  BoxDecoration(
          color: colorScheme.onBackground,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          )),
      height: height,
      width: width,
      child: child,
    );
  }
}
