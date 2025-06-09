import 'package:school_admin_app/core/theme/synap/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSidemenu extends StatelessWidget {
  CustomSidemenu(
      {super.key,
      this.icon,
      this.isCollapsed,
      this.text,
      this.tr,
      this.function});
  bool? isCollapsed;
  String? text;
  IconData? icon;
  String? tr;
  Function? function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function!();
      },
      child: !isCollapsed!
          ? ListTile(
              leading: Icon(
                icon,
                color: ColorConstant.gray10,
                size: 20,
              ),
              title: !isCollapsed!
                  ? Text(
                      tr!.tr,
                      style: Theme.of(context).textTheme.headlineMedium,
                    )
                  : null,
            )
          : Column(
              children: [
                ListTile(
                  title: Icon(
                    icon,
                    color: ColorConstant.gray10,
                    size: 20,
                  ),
                ),
                Text(
                  text!,
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              ],
            ),
    );
  }
}
