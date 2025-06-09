import 'package:school_admin_app/core/constants/constants.dart';
import 'package:school_admin_app/core/theme/synap/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';

class ErrorMessage extends StatelessWidget {
  ErrorMessage(this.errorMessage, this.image, {super.key});
  String errorMessage;
  String image;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Center(
      //alignment: Alignment.bottomCenter,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: height * 0.1,
          // ),
          Image.asset(
            image,
            height: height * 0.2,
            width: width * 0.3,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            errorMessage.tr,
            style: textTheme.titleMedium!.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
