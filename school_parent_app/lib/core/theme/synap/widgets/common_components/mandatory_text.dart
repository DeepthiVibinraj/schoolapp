import 'package:flutter/material.dart';

// RichText mandatoryText(TextTheme textTheme, String label) {
//   return mandatoryText();
// }

class mandatoryText extends StatelessWidget {
  final String text;
  const mandatoryText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return RichText(
      text: TextSpan(text: text, style: textTheme.bodyMedium, children: [
        TextSpan(
            text: ' *',
            style: textTheme.titleMedium?.copyWith(color: Colors.red)
            // style: TextStyle(
            //     color: Colors.red,
            //     fontWeight: FontWeight.bold,
            //     fontSize: getFontSize(15))
            )
      ]),
    );
  }
}
