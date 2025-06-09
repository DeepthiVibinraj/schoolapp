import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({super.key, 
    this.title,
    this.subTitle,
    this.isThreeLine,
    this.trailing,
    this.dense,
    this.visualDensity,
    this.shape,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.contentPadding,
    this.enabled,
    this.onTap,
    this.onLongPress,
    this.leading,
  });

  Widget? leading;
  Widget? title;
  String? subTitle;
  bool? isThreeLine;
  Widget? trailing;
  bool? dense;
  VisualDensity? visualDensity;
  ShapeBorder? shape;
  Color? selectedColor;
  Color? iconColor;
  Color? textColor;
  EdgeInsetsGeometry? contentPadding;
  bool? enabled;
  Function()? onTap;
  Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: Text(
          subTitle!,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        isThreeLine: isThreeLine!,
        trailing: trailing,
        dense: dense,
        visualDensity: visualDensity,
        shape: shape,
        selectedColor: selectedColor,
        iconColor: iconColor,
        textColor: textColor,
        contentPadding: contentPadding,
        enabled: enabled!,
        onTap: onTap,
        onLongPress: onLongPress,
      ),
    );
  }
}
