// import 'package:school_admin_app/constants/constants.dart';
// import 'package:school_admin_app/core/theme/responsive.dart';
// import 'package:school_admin_app/core/theme/synap/size_utils.dart';
// import 'package:flutter/material.dart';

// class CustomDropDownSearch extends StatelessWidget {
//   const CustomDropDownSearch(
//       {super.key,
//       required this.list,
//       required this.hint,
//       required this.menuMode,
//       required this.function,
//       required this.controller,
//       required this.textTheme});
//   final List<dynamic> list;
//   final String hint;
//   final bool menuMode;

//   final Function function;
//   final TextEditingController controller;
//   final TextTheme textTheme;

//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     return DropdownSearch<dynamic>(
//       items: list,
//       dropdownDecoratorProps: DropDownDecoratorProps(
//         baseStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
//         dropdownSearchDecoration: InputDecoration(
//           //filled: true,
//           // fillColor: colorScheme.onTertiary,
//           hintText: controller.text.isEmpty ? hint : controller.text,
//           hintStyle: textTheme.labelLarge?.copyWith(color: Colors.grey),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(5.0),
//             borderSide: BorderSide(color: colorScheme.primary, width: 0.5),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(5),
//             borderSide: const BorderSide(
//               color: Colors.black,
//               width: 0.5,
//             ),
//           ),
//           // fillColor: colorScheme.primaryContainer.withOpacity(0.2),
//           contentPadding: !Responsive.isMobile(context)
//               ? getPadding(bottom: defaultPadding / 2, left: defaultPadding / 4)
//               : getPadding(bottom: defaultPadding / 2, left: defaultPadding),
//           errorStyle: const TextStyle(color: Colors.red),
//           border: OutlineInputBorder(
//             borderSide:
//                 BorderSide(color: colorScheme.tertiary.withOpacity(0.3)),
//           ),
//         ),
//       ),

//       popupProps: PopupProps.menu(
//         containerBuilder: (context, popupWidget) => KeyboardVisibilityBuilder(
//           builder: (context, isKeyboardVisible) => Container(
//             padding: const EdgeInsets.only(
//                 // bottom: isKeyboardVisible
//                 //     ? MediaQuery.of(context).viewInsets.bottom
//                 //     : 0,
//                 ),
//             color: colorScheme.surface,
//             child: popupWidget,
//           ),
//         ),
//         itemBuilder: (context, item, isSelected) => Container(
//             height: height * 0.08,
//             padding: getPadding(all: defaultPadding / 2),
//             color: colorScheme.surface,
//             child: ListTile(
//                 title: Text(
//               item,
//               style:
//                   textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
//             ))),
//         showSearchBox: true,
//         //title: Text('Search'),
//         constraints: const BoxConstraints(maxHeight: 400),

//         searchFieldProps: TextFieldProps(
//           autofocus: true,
//           style: textTheme.labelMedium?.copyWith(color: colorScheme.onSurface),
//           controller: controller,
//           decoration: InputDecoration(
//             hintText: hint,
//             enabledBorder: OutlineInputBorder(
//                 borderSide:
//                     BorderSide(color: colorScheme.onSurface, width: 0.3)),
//             //fillColor: colorScheme.onTertiary,
//             contentPadding: !Responsive.isMobile(context)
//                 ? getPadding(
//                     bottom: defaultPadding / 2, left: defaultPadding / 4)
//                 : getPadding(bottom: defaultPadding / 2, left: defaultPadding),
//             errorStyle: const TextStyle(color: Colors.red),
//             hintStyle: textTheme.labelLarge?.copyWith(color: Colors.grey),
//             border: const OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.grey),
//             ),
//             suffixIcon: IconButton(
//               icon: const Icon(Icons.clear),
//               onPressed: () {
//                 controller.clear();
//               },
//             ),
//           ),
//         ),
//       ),

//       // onChanged: (value) => function(value),
//       // onSaved: (newValue) => function(),
//       onChanged: (dynamic selectedValue) {
//         // print("On changed =====>$selectedValue");
//         function(selectedValue);
//       },
//       validator: (value) {
//         if (controller.text.trim().isEmpty) {
//           return hint;
//         }
//         return null;
//       },

//       //selectedItem: selectedItem,
//     );
//   }
// }
