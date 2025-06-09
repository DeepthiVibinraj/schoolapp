import 'package:flutter/material.dart';

TextFormField customSettingsTextFormField(
  TextTheme textTheme,
  ColorScheme colorScheme,
  TextEditingController controller,
  String hintText,
  TextInputType type,
  Function function,
  String val,
  String key,
  void Function(String)? onChanged, // Updated parameter type
) {
  return TextFormField(
    cursorColor: colorScheme.onSecondaryContainer,
    style: textTheme.labelMedium
        ?.copyWith(color: colorScheme.onSurface.withOpacity(0.7)),
    key: ValueKey(key),
    validator: (value) => function(),
    onSaved: (newValue) => val = newValue!,
    controller: controller,
    keyboardType: type,
    onChanged: onChanged,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: colorScheme.onSecondaryContainer,
          width: 0.3,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(
          color: colorScheme.onSecondaryContainer,
        ),
      ),
      filled: true,
      fillColor: colorScheme.tertiaryContainer.withOpacity(0.3),
    ), // Updated parameter type
    // decoration: InputDecoration(
    //   errorStyle: TextStyle(color: Colors.red),
    //   hintText: hintText,
    //   hintStyle: TextStyle(
    //     color: Colors.grey,
    //     fontSize: defaultPadding,
    //     fontWeight: FontWeight.normal,
    //   ),
    //   border: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(5),
    //     borderSide: BorderSide(color: colorScheme.onSurface),
    //   ),
    // ),
  );
}
