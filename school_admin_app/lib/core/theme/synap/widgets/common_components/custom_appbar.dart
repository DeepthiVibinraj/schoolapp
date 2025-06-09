import 'package:school_admin_app/core/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:school_admin_app/utils/app_routes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconData icon;
  final String route;
  final bool backButton;
  final bool detailScreen;
  final VoidCallback deleteFunction;
  CustomAppBar(
      {this.icon = Icons.home,
      this.route = AppRoutes.login,
      this.backButton = false,
      VoidCallback? deleteFunction,
      this.detailScreen = false,
      super.key})
      : this.deleteFunction = deleteFunction ?? _defaultDeleteFunction;
  static void _defaultDeleteFunction() {
    print("Default delete function called");
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      leading: backButton
          ? BackButton(
              onPressed: () => Get.back(),
            )
          : null,
      backgroundColor: colorScheme.primary,
      // Color.fromARGB(255, 104, 97, 152),
      actions: [
        if (!detailScreen)
          IconButton(onPressed: () => Get.offAllNamed(route), icon: Icon(icon)),

        /////////////////
        if (detailScreen)
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Handle the selected menu option
              print(result);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'home',
                onTap: () => Get.offAllNamed(AppRoutes.login),
                child: const Row(
                  children: [
                    Icon(Icons.home),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'delete',
                onTap: deleteFunction,
                child: const Row(
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Text('Delete'),
                  ],
                ),
              ),
            ],
          ),
      ],
    );
  }

  @override
  Size get preferredSize {
    //if (Responsive.isMobile(context)) {
    return AppBar().preferredSize; // Return preferred size of AppBar
    // } else {
    //   return const Size.fromHeight(60); // Return zero height to hide app bar
    // }
  }
}
