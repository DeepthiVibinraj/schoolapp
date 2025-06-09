import 'package:school_admin_app/core/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: defaultPadding,
    );
  }
}
