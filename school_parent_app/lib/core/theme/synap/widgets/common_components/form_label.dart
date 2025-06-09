import 'package:school_parent_app/core/theme/responsive.dart';
import 'package:flutter/material.dart';

class NonMandatoryText extends StatelessWidget {
  NonMandatoryText({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      style: TextStyle(fontSize: Responsive.isMobile(context) ? 15 : 20),
    );
  }
}
