import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container cancelButton(
    ColorScheme colorScheme, TextTheme textTheme, Function? function) {
  return Container(
      height: 40,
      width: 100,
      decoration: const BoxDecoration(color: Colors.grey),
      child: TextButton(
          onPressed: () => function!(),
          child: Text('btn_cancel'.tr,
              style:
                  textTheme.bodyMedium?.copyWith(color: colorScheme.surface))));
}
