// import 'package:school_admin_app/core/theme/synap/widgets/custom_image_view.dart';
// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class AppbarImage extends StatelessWidget {
//   AppbarImage(
//       {super.key,
//       required this.height,
//       required this.width,
//       this.imagePath,
//       this.svgPath,
//       this.margin,
//       this.onTap});

//   double height;

//   double width;

//   String? imagePath;

//   String? svgPath;

//   EdgeInsetsGeometry? margin;

//   Function? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         onTap?.call();
//       },
//       child: Padding(
//         padding: margin ?? EdgeInsets.zero,
//         child: CustomImageView(
//           svgPath: svgPath,
//           imagePath: imagePath,
//           height: height,
//           width: width,
//           fit: BoxFit.contain,
//         ),
//       ),
//     );
//   }
// }
