import 'package:school_parent_app/core/theme/synap/color_constant.dart';
import 'package:school_parent_app/core/theme/synap/size_utils.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? const SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? const SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingT11:
        return getPadding(
          left: 12,
          top: 12,
          bottom: 12,
        );
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.fillSynOrange100:
        return ColorConstant.synOrange20;
      case ButtonVariant.OutlineGray100cc:
        return ColorConstant.synOrange100;
      case ButtonVariant.OutlineSynOrange100:
        return null;
      default:
        return ColorConstant.synOrange100;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineSynOrange100:
        return BorderSide(
          color: ColorConstant.synOrange100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineGray100cc:
        return ColorConstant.green100;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case ButtonShape.CircleBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      case ButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.RoundedBorder7:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.Medium16:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.Regular18:
        return TextStyle(
          color: ColorConstant.whiteA100,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.22,
          ),
        );
      case ButtonFontStyle.Medium13whiteA100:
        return TextStyle(
          color: ColorConstant.whiteA100,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.23,
          ),
        );
      case ButtonFontStyle.Medium12whiteA100:
        return TextStyle(
          color: ColorConstant.whiteA100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.Medium15whiteA100:
        return TextStyle(
          color: ColorConstant.whiteA100,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.27,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.synOrange100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder12,
  RoundedBorder15,
  CircleBorder25,
  CircleBorder20,
  RoundedBorder7,
}

enum ButtonPadding {
  PaddingAll3,
  PaddingAll14,
  PaddingT11,
  PaddingAll11,
}

enum ButtonVariant {
  OutlineSynOrange100,
  fillSynOrange100,
  OutlineGray100cc,
}

enum ButtonFontStyle {
  Medium12SynOrange100_1,
  Medium16,
  Regular18,
  Medium13whiteA100,
  Medium12whiteA100,
  Medium15whiteA100,
}
