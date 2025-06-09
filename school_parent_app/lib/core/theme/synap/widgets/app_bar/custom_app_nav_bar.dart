// import 'package:school_admin_app/core/theme/responsive.dart';
// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   CustomAppBar(
//       {super.key,
//       required this.title,
//       this.rightButton,
//       this.leadingWidth,
//       this.leading,
//       required this.iconColor,
//       required this.context});

//   final BuildContext context;
//   final Widget title;
//   Widget? rightButton;
//   final Color iconColor;

//   double? leadingWidth;
//   Widget? leading;

//   @override
//   Size get preferredSize {
//     if (Responsive.isMobile(context)) {
//       return AppBar().preferredSize; // Return preferred size of AppBar
//     } else {
//       return const Size.fromHeight(60); // Return zero height to hide app bar
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     return AppBar(
//       backgroundColor: colorScheme.onSurface,
//       iconTheme: IconThemeData(
//           size:
//               Responsive.isMobile(context) ? 30 : 40, //change size on your need
//           color: iconColor),
//       elevation: 0,
//       leading: leading,
//       title: title,
//       //actions: [rightButton],
//     );
//   }
// }
