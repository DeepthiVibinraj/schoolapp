// import 'package:school_admin_app/app_export.dart';
// import 'package:school_admin_app/constants/constants.dart';
// import 'package:school_admin_app/core/theme/synap/size_utils.dart';
// import 'package:school_admin_app/pages/paient_tracking/controller/patient_tracking_list_controller.dart';
// import 'package:flutter/material.dart';

// class CustomSearchBar extends StatefulWidget {
//   CustomSearchBar({
//     super.key,
//     //required this.getxController,
//     required this.colorScheme,
//     required this.getController,
//   });

//   final Widget getController;
//   final ColorScheme colorScheme;

//   @override
//   State<CustomSearchBar> createState() => _CustomSearchBarState();
// }

// class _CustomSearchBarState extends State<CustomSearchBar> {
//   // final patTrackCtrl = Get.find<getController>();
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       //width: width,
//       height: height * 0.07,
//       child: TextField(
//         controller: Get.find<getController>().searchBoxController,
//         decoration: InputDecoration(
//             suffixIcon: Container(
//                 height: height * 0.07,
//                 decoration: BoxDecoration(
//                     color: widget.colorScheme.primary,
//                     borderRadius: const BorderRadius.only(
//                         topRight: Radius.circular(defaultPadding / 4),
//                         bottomRight: Radius.circular(defaultPadding / 4))),
//                 child: Padding(
//                   padding: getPadding(
//                       left: defaultPadding / 2, right: defaultPadding / 2),
//                   child: Obx(() {
//                     if (patTrackCtrl.isSearch!.value) {
//                       return GestureDetector(
//                         onTap: () {
//                           patTrackCtrl.isSearch!.value = false;
//                           patTrackCtrl.searchBoxController.clear();
//                           patTrackCtrl.getPatientTrackingListData();
//                         },
//                         child: const Icon(
//                           Icons.cancel,
//                           color: Colors.white,
//                         ),
//                       );
//                     } else {
//                       return GestureDetector(
//                         onTap: () {
//                           patTrackCtrl.isSearch!.value = true;
//                           patTrackCtrl.getPatientTrackingListData();
//                         },
//                         child: const Icon(
//                           Icons.search,
//                           color: Colors.white,
//                         ),
//                       );
//                     }
//                   }),
//                 )),
//             hintText: "src_by_email".tr,
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(defaultPadding / 4),
//                 borderSide: BorderSide(color: widget.colorScheme.surface))),
//         onChanged: (query) {},
//       ),
//     );
//   }
// }
