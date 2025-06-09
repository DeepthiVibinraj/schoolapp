// import 'package:school_admin_app/constants/constants.dart';
// import 'package:school_admin_app/core/theme/synap/size_utils.dart';
// import 'package:flutter/material.dart';

// class CustomToggleSwitch extends StatefulWidget {
//   const CustomToggleSwitch({
//     super.key,
//     required this.active,
//     required this.function,
//   });
//   final bool active;
//   final Function(bool) function; // Updated the type of the function

//   @override
//   State<CustomToggleSwitch> createState() => _CustomToggleSwitchState();
// }

// class _CustomToggleSwitchState extends State<CustomToggleSwitch> {
//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     print('widget.active==: ${widget.active}');
//     return ToggleSwitch(
//       borderWidth: 2,
//       borderColor: [colorScheme.primary, colorScheme.primary],
//       minWidth: 50,
//       initialLabelIndex: widget.active ? 1 : 0,
//       cornerRadius: defaultPadding / 4,
//       activeFgColor: Colors.white,
//       inactiveBgColor: colorScheme.tertiary,
//       inactiveFgColor: Colors.black,
//       customHeights: [height * 0.02, height * 0.02],
//       totalSwitches: 2,
//       minHeight: 30,
//       labels: const ['No', 'Yes'],
//       //  icons: [Icons.close, Icons.check],
//       activeBgColors: [
//         [colorScheme.primary],
//         [colorScheme.primary],
//       ],
//       onToggle: (num) {
//         print('switched to: $num');
//         widget.function(num == 1); // Call the function here
//       },
//     );
//   }
// }
// // import 'package:school_admin_app/app_export.dart';
// // import 'package:school_admin_app/constants/constants.dart';
// // import 'package:school_admin_app/core/theme/responsive.dart';
// // import 'package:flutter/material.dart';
// // import 'package:toggle_switch/toggle_switch.dart';

// // class CustomToggleSwitch extends StatefulWidget {
// //   const CustomToggleSwitch({super.key, required this.active});
// //   final bool active;

// //   @override
// //   State<CustomToggleSwitch> createState() => _CustomToggleSwitchState();
// // }

// // class _CustomToggleSwitchState extends State<CustomToggleSwitch> {
// //   @override
// //   Widget build(BuildContext context) {
// //     final colorScheme = Theme.of(context).colorScheme;
// //     return ToggleSwitch(
// //       borderWidth: 2,
// //       borderColor: [colorScheme.primary, colorScheme.primary],
// //       //minWidth: 5.0,
// //       initialLabelIndex: widget.active ? 1 : 0,
// //       cornerRadius: defaultPadding / 4,
// //       activeFgColor: Colors.white,
// //       inactiveBgColor: colorScheme.surface,
// //       inactiveFgColor: colorScheme.primary,
// //       // customWidths: Responsive.isDesktop(context)
// //       //     ? [width * 0.0, width * 0.035]
// //       //     : [width * 0.09, width * 0.13],
// //       // customHeights: [height * 0.02, height * 0.02],
// //       customWidths: Responsive.isDesktop(context)
// //           ? [width * 0.13, width * 0.16]
// //           : [width * 0.12, width * 0.16],
// //       customHeights: [height * 0.02, height * 0.02],
// //       totalSwitches: 2,
// //       //minHeight: 30,
// //       minHeight: 30,
// //       //minWidth: 48,
// //       labels: ['No', 'Yes'],
// //       //icons: [Icons.close, Icons.check],
// //       // activeBgColors: [
// //       //   [colorScheme.primary],
// //       //   [colorScheme.primary],
// //       // ],
// //       activeBgColors: [
// //         [colorScheme.primary],
// //         [colorScheme.primary],
// //       ],
// //       onToggle: (num) {
// //         print('switched to: $num');
// //       },
// //     );
// //   }
// // }
