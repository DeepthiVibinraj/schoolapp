// import 'package:flutter/material.dart';

// class FilterContainer extends StatelessWidget {
//   const FilterContainer({
//     super.key,
//     required this.colorScheme,
//     required this.textTheme,
//     required this.firstNameController,
//     required this.firstName,
//     required this.dobController,
//     required this.email,
//     required this.enrolId,
//   });

//   final ColorScheme colorScheme;
//   final TextTheme textTheme;
//   final TextEditingController firstNameController;
//   final String firstName;
//   final TextEditingController dobController;
//   final String email;
//   final enrolId;

//   @override
//   Widget build(BuildContext context) {
//     return KeyboardVisibilityBuilder(
//       builder: (p0, isKeyboardVisible) => SingleChildScrollView(
//         child: Container(
//           decoration: BoxDecoration(
//               color: colorScheme.surface,
//               borderRadius: BorderRadius.circular(20)),
//           padding: EdgeInsets.only(
//             bottom: isKeyboardVisible
//                 ? MediaQuery.of(context).viewInsets.bottom
//                 : 0,
//           ),
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: getPadding(
//                   left: defaultPadding * 2,
//                   right: defaultPadding * 2,
//                   top: defaultPadding,
//                   bottom: defaultPadding),
//               child: Container(
//                 color: colorScheme.surface,
//                 //height: height * 0.72,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         height: defaultPadding,
//                       ),
//                       Text(
//                         'lbl_filters'.tr,
//                         style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: colorScheme.onSurface),
//                       ),
//                       const SizedBox(
//                         height: defaultPadding,
//                       ),
//                       Text(
//                         'lbl_enrolid'.tr,
//                         style: textTheme.bodyMedium,
//                       ),
//                       const SizedBox(
//                         height: defaultPadding / 2,
//                       ),
//                       customTextFormField(
//                           context,
//                           colorScheme,
//                           textTheme,
//                           firstNameController,
//                           'src_by_email'.tr,
//                           TextInputType.name, () {
//                         return null;

//                         // if (enrolIdController.text.trim().isEmpty ||
//                         //     enrolIdController.text.trim().length < 4) {
//                         //   return 'Enter last name';
//                         // }
//                         // return null;
//                       }, enrolId, 'enrollmentId', false),
//                       const SizedBox(
//                         height: defaultPadding,
//                       ),
//                       Text(
//                         "lbl_name".tr,
//                         style: textTheme.bodyMedium,
//                       ),
//                       const SizedBox(
//                         height: defaultPadding / 2,
//                       ),
//                       customTextFormField(
//                           context,
//                           colorScheme,
//                           textTheme,
//                           firstNameController,
//                           "src_by_name".tr,
//                           TextInputType.name, () {
//                         if (firstNameController.text.trim().isEmpty ||
//                             firstNameController.text.trim().length < 4) {
//                           return 'Enter last name';
//                         }
//                         return null;
//                       }, firstName, 'firstName', false),
//                       const SizedBox(
//                         height: defaultPadding,
//                       ),
//                       Text(
//                         "lbl_dob".tr,
//                         style: textTheme.bodyMedium,
//                       ),
//                       const SizedBox(
//                         height: defaultPadding / 2,
//                       ),
//                       TextFormField(
//                         style: textTheme.bodyMedium?.copyWith(
//                             //  color: colorScheme.onSurface.withOpacity(0.7)
//                             ),
//                         controller: dobController,
//                         readOnly: true,
//                         cursorColor: colorScheme.onSecondaryContainer,
//                         decoration: InputDecoration(
//                           hintText: 'src_by_dob'.tr,
//                           hintStyle: textTheme.labelLarge
//                               ?.copyWith(color: Colors.grey),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(5),
//                             borderSide: const BorderSide(
//                               color: Colors.black,
//                               width: 0.5,
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(5.0),
//                             borderSide: BorderSide(
//                                 color: colorScheme.primary, width: 0.5),
//                           ),
//                           // filled: true,
//                           // fillColor:
//                           //     colorScheme.tertiaryContainer.withOpacity(0.3),
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               Icons.calendar_month,
//                               color: colorScheme.primary,
//                             ),
//                             onPressed: () async {
//                               DateTime? pickedDate = await showDatePicker(
//                                 context: Get.context!,
//                                 initialDate: DateTime.now(),
//                                 firstDate: DateTime(2020),
//                                 lastDate: DateTime(2050),
//                                 builder: (context, child) {
//                                   return Theme(
//                                     data: ThemeData.light().copyWith(
//                                       primaryColor: colorScheme.background,
//                                       buttonTheme: const ButtonThemeData(
//                                           textTheme: ButtonTextTheme.primary),
//                                       colorScheme: ColorScheme.light(
//                                         primary: colorScheme
//                                             .background, // Customize text color
//                                       ).copyWith(
//                                           background:
//                                               colorScheme.surfaceVariant),
//                                     ),
//                                     child: child!,
//                                   );
//                                 },
//                               );
//                               if (pickedDate != null) {
//                                 String formattedDate =
//                                     DateFormat('MM/dd/yyyy').format(pickedDate);
//                                 dobController.text = formattedDate;
//                                 // dtlcontroller.cListFormData[fieldName] =
//                                 //     formattedDate;
//                               } else {
//                                 // print("Warning: showDatePicker returned null");
//                               }
//                               // Validate the field when the date is picked
//                               // _formKey.currentState!.validate();
//                             },
//                           ),
//                         ),
//                         validator: (value) {
//                           return null;

//                           //   if (field['mandatory'] == true &&
//                           //       (value == null || value.isEmpty)) {
//                           //     return 'This field is mandatory';
//                           //   }
//                           //   return null;
//                           //
//                         },
//                       ),
//                       const SizedBox(
//                         height: defaultPadding,
//                       ),
//                       Text(
//                         "lbl_email".tr,
//                         style: textTheme.bodyMedium,
//                       ),
//                       const SizedBox(
//                         height: defaultPadding / 2,
//                       ),
//                       customTextFormField(
//                           context,
//                           colorScheme,
//                           textTheme,
//                           firstNameController,
//                           "src_by_email".tr,
//                           TextInputType.emailAddress, () {
//                         return null;

//                         // if (emailController.text.trim().isEmpty ||
//                         //     emailNameController.text.trim().length < 4) {
//                         //   return 'Enter email';
//                         // }
//                         // return null;
//                       }, email, 'email', false),
//                       const SizedBox(
//                         height: defaultPadding * 2,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           clearButton(colorScheme, textTheme, () {
//                             print('cancelllllllllllll');
//                             Navigator.pop(context);
//                           }),
//                           const SizedBox(
//                             width: defaultPadding,
//                           ),
//                           GestureDetector(
//                               onTap: () {
//                                 // setState(() {
//                                 // //  isUploaded = true;
//                                 // });
//                                 // print("Save Button Clicked Press==");
//                                 //uploadCheckListAttachment(context);
//                               },
//                               child: Container(
//                                   height: 40,
//                                   width: 100,
//                                   decoration:
//                                       BoxDecoration(color: colorScheme.primary),
//                                   child: Center(
//                                     child: Text("btn_search".tr,
//                                         style: textTheme.bodyMedium?.copyWith(
//                                             color: colorScheme.surface)
//                                         // style: textTheme.bodyMedium?.copyWith(
//                                         //     color: colorScheme.surface)
//                                         ),
//                                   ))),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
