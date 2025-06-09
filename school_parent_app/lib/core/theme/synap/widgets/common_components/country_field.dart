// import 'package:school_admin_app/constants/constants.dart';
// import 'package:school_admin_app/core/theme/synap/size_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:country_calling_code_picker/picker.dart';

// class CountryList extends StatefulWidget {
//   const CountryList({
//     super.key,
//     required this.country,
//   });

//   final Country? country;

//   @override
//   State<CountryList> createState() => _CountryListState();
// }

// class _CountryListState extends State<CountryList> {
//   Country? _selectedCountry;

//   @override
//   void initState() {
//     initCountry();
//     super.initState();
//   }

//   void initCountry() async {
//     final country = await getDefaultCountry(context);
//     setState(() {
//       _selectedCountry = country;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final country = _selectedCountry;
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           country == null
//               ? Container()
//               : Container(
//                   padding: getPadding(
//                       left: defaultPadding / 4,
//                       top: defaultPadding / 2,
//                       bottom: defaultPadding / 2),
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black54),
//                       borderRadius: BorderRadius.all(
//                           Radius.circular(defaultPadding / 4))),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Image.asset(
//                             country!.flag,
//                             package: countryCodePackageName,
//                             width: 50,
//                             height: 25,
//                           ),
//                           Text(
//                             // '${country?.callingCode} ${country?.name} (${country?.countryCode})',
//                             ' ${country?.name} ',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                           onPressed: _onPressedShowDialog,
//                           icon: Icon(Icons.keyboard_arrow_down_outlined))
//                     ],
//                   ),
//                 ),
//         ],
//       ),
//     );
//   }

//   void _onPressedShowDialog() async {
//     final country = await showCountryPickerDialog(context,
//         title: Text(
//           'Select Country',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.w400,
//           ),
//           textAlign: TextAlign.left,
//         ),
//         cornerRadius: defaultPadding,
//         focusSearchBox: true);
//     if (country != null) {
//       setState(() {
//         _selectedCountry = country;
//       });
//     }
//   }
// }
