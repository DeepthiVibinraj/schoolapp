import 'package:school_parent_app/core/constants/constants.dart';
import 'package:school_parent_app/core/theme/synap/size_utils.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container cupertinoSearchTextField(ColorScheme colorScheme, String text) {
  return Container(
      height: height * 0.08,
      decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(defaultPadding / 2)),
      child: CupertinoSearchTextField(
        backgroundColor: colorScheme.surface,
        placeholder: 'Search $text',
      ));
}
