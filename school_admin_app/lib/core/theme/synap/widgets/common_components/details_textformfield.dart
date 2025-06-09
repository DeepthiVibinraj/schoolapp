import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/src/extensions/export.dart';

TextFormField detailsTextformfield(
  TextEditingController detailsController,
  String details,
  BuildContext context,
  String key,
) {
  final colorScheme = Theme.of(context).colorScheme;
  final textTheme = Theme.of(context).textTheme;

  return TextFormField(
    maxLines: 4,
    key: ValueKey(key),
    validator: (value) {
      return null;
    },
    onSaved: (newValue) => details = newValue!,
    controller: detailsController,
    keyboardType: TextInputType.multiline,
    inputFormatters: [
      LengthLimitingTextInputFormatter(500), // Set your desired max length here
    ],
    decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.red),
        hintText: 'hnt_enter_details_here'.tr,
        hintStyle: textTheme.labelLarge?.copyWith(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: colorScheme.primary, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
  );
}
