// import 'dart:io';
// import 'package:school_admin_app/core/theme/synap/size_utils.dart';
// import 'package:flutter/material.dart';

// class ProfilePhoto extends StatefulWidget {
//   ProfilePhoto({super.key, required this.image});
//   IconData image;
//   //IconData? icon;

//   @override
//   State<ProfilePhoto> createState() => _ProfilePhotoState();
// }

// class _ProfilePhotoState extends State<ProfilePhoto> {
//   File? _pickedImage;

//   void imgFromGallery() async {
//     var pickedImageFile =
//         await ImagePicker().pickImage(source: ImageSource.gallery);
//     setState(() {
//       if (pickedImageFile != null) {
//         _pickedImage = File(pickedImageFile.path);
//       } else {
//         print('No image selected');
//       }
//     });
//   }

//   Future imgFromCamera() async {
//     final pickedImageFile =
//         await ImagePicker().pickImage(source: ImageSource.camera);

//     setState(() {
//       if (pickedImageFile != null) {
//         _pickedImage = File(pickedImageFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   void showPicker(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (BuildContext bc) {
//           return SafeArea(
//             child: Wrap(
//               children: <Widget>[
//                 ListTile(
//                     leading: const Icon(
//                       Icons.photo_library,
//                       color: Colors.white,
//                     ),
//                     title: const Text(
//                       'Gallery',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     onTap: () {
//                       imgFromGallery();
//                       Navigator.of(context).pop();
//                     }),
//                 // ListTile(
//                 //   leading: const Icon(Icons.photo_camera, color: Colors.white),
//                 //   title: const Text(
//                 //     'Camera',
//                 //     style: TextStyle(color: Colors.white),
//                 //   ),
//                 //   onTap: () {
//                 //     imgFromCamera();
//                 //     Navigator.of(context).pop();
//                 //   },
//                 // ),
//               ],
//             ),
//           );
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     final textTheme = Theme.of(context).textTheme;
//     return GestureDetector(
//         onTap: () => showPicker(context),
//         child: _pickedImage != null
//             ? CircleAvatar(
//                 radius: getSize(35),
//                 backgroundColor: colorScheme.surface,
//                 child: CircleAvatar(
//                   backgroundImage: FileImage(_pickedImage!),
//                   radius: getSize(30),
//                 ),
//               )
//             : Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: getPadding(top: 20),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: colorScheme.secondary,
//                         borderRadius: BorderRadius.circular(50)),
//                     width: getSize(80),
//                     height: getSize(80),
//                     child: Icon(
//                       widget.image,
//                       color: colorScheme.primary,
//                       size: 40,
//                     ),
//                   ),
//                 ),
//               ));
//   }
// }
