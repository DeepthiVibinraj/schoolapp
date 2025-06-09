import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextFormField customTextFormField(
  BuildContext context,
  ColorScheme colorScheme,
  TextTheme textTheme,
  TextEditingController controller,
  String hintText,
  TextInputType type,
  String? Function() validator,
  String val,
  String key,
  bool readOnly,
) {
  return TextFormField(
    controller: controller,
    keyboardType: type,
    inputFormatters: [
      LengthLimitingTextInputFormatter(50),
      if (type == TextInputType.number)
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      if (type == TextInputType.phone)
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      if (type == TextInputType.name)
        // FilteringTextInputFormatter.allow(RegExp(r'^[0-9a-zA-Z\s]*$')),
        FilteringTextInputFormatter.allow(RegExp(r'[0-9a-zA-Z\s]')),
      // if (type == TextInputType.url)
      //   // FilteringTextInputFormatter.allow(RegExp(r'^[0-9a-zA-Z\s]*$')),
      //   FilteringTextInputFormatter.allow(
      //       RegExp('^(http(s)?:\/\/)?((w){3}.)?youtu(be|.be)?(\.com)?\/.+')),
    ],
    key: ValueKey(key),
    enabled: !readOnly,
    readOnly: readOnly,
    validator: (value) {
      return validator();
    },
    // maxLength: type == TextInputType.name ? 50 : null,
    onSaved: (newValue) => val = newValue!,
    onEditingComplete: () {
      // print("FRM-----------ON EDIT DONE --->");
      // key.currentState?.save(); // Save the value when editing is complete
    },
    decoration: InputDecoration(
        // filled: true,
        // fillColor: colorScheme.primaryContainer.withOpacity(0.2),
        errorStyle: const TextStyle(color: Colors.red),
        hintText: hintText,
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
