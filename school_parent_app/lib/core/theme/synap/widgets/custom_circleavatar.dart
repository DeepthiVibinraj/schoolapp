import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar(
      {super.key,
      this.alignment,
      this.backgroundColor,
      this.foregroundColor,
      this.backgroundImage,
      this.foregroundImage,
      this.radius,
      this.maxRadius,
      this.minRadius,
      this.child});
  Alignment? alignment;
  Color? backgroundColor;
  Color? foregroundColor;
  ImageProvider? backgroundImage;
  ImageProvider? foregroundImage;
  double? radius;
  double? minRadius;
  double? maxRadius;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCircleAvatarWidget(),
          )
        : _buildCircleAvatarWidget();
  }

  _buildCircleAvatarWidget() {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      backgroundImage: backgroundImage,
      foregroundImage: foregroundImage,
      minRadius: minRadius,
      maxRadius: maxRadius,
      radius: radius,
    );
  }
}
