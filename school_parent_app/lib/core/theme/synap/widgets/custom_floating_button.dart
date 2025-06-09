import 'package:flutter/material.dart';
import 'package:school_parent_app/core/theme/synap/size_utils.dart';
import 'package:school_parent_app/core/theme/synap/color_constant.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton(
      {super.key,
      this.shape,
      this.variant,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.child});

  FloatingButtonShape? shape;

  FloatingButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildFabWidget(),
          )
        : _buildFabWidget();
  }

  _buildFabWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FloatingActionButton(
        backgroundColor: _setColor(),
        onPressed: onTap,
        child: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          decoration: _buildDecoration(),
          child: child,
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setColor() {
    switch (variant) {
      default:
        return ColorConstant.gray100;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
    }
  }
}

enum FloatingButtonShape {
  RoundedBorder19,
}

enum FloatingButtonVariant {
  FillBlue500,
}
