import 'package:flutter/material.dart';

Container submitButton(ColorScheme colorScheme, TextTheme textTheme,
    Function function, String text) {
  return Container(
    height: 40,
    width: 100,
    decoration: BoxDecoration(color: colorScheme.primary),
    child: TextButton(
        onPressed: () => function(),
        child: Text(text,
            style: textTheme.bodyMedium?.copyWith(color: colorScheme.surface))),
  );
}
