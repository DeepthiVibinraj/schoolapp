import 'package:school_parent_app/core/constants/constants.dart';
import 'package:school_parent_app/core/theme/synap/size_utils.dart';

import 'package:flutter/material.dart';

ElevatedButton addButton(TextTheme textTheme, ColorScheme colorScheme,
    String text, Function function) {
  return ElevatedButton(
      onPressed: () => function(),
      child: Padding(
        padding:
            getPadding(left: defaultPadding / 6, right: defaultPadding / 6),
        child: Text(
          'Add',
          style: textTheme.bodyMedium?.copyWith(color: colorScheme.surface),
        ),
      ));
}
