import 'package:flutter/material.dart';

Future<dynamic> successAlert(TextTheme textTheme, ColorScheme colorScheme,
    BuildContext context, String message, Function Function() function) {
  return showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Center(
          child: Text(
        message,
        style: textTheme.bodyMedium,
      )),
      content: CircleAvatar(
        backgroundColor: colorScheme.primary,
        radius: 40,
        child: Icon(
          Icons.check,
          color: colorScheme.surface,
          size: 30,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            function;
            //Navigator.of(ctx).pop();
          },
          child: const Center(
            child: Text("okay"),
          ),
        ),
      ],
    ),
  );
}
