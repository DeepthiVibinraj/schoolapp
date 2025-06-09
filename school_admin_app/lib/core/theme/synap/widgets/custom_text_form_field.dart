import 'package:school_admin_app/core/theme/synap/color_constant.dart';
import 'package:school_admin_app/core/theme/synap/size_utils.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator,
      this.cursorColor,
      this.cursorHeight});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;
  Color? cursorColor;
  double? cursorHeight;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        textAlign: TextAlign.left,
        cursorColor: cursorColor,
        cursorHeight: cursorHeight,
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.Medium16:
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
      case TextFormFieldFontStyle.Medium20:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.5,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case TextFormFieldShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.fillSynOrange100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray100,
            width: 1,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black90,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.fillSynOrange100:
        return ColorConstant.synOrange20;
      case TextFormFieldVariant.OutlineGray100:
        return ColorConstant.whiteA100;
      default:
        return ColorConstant.whiteA100;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.fillSynOrange100:
        return true;
      case TextFormFieldVariant.OutlineGray100:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      case TextFormFieldPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case TextFormFieldPadding.PaddingT14:
        return getPadding(
          left: 15,
          top: 15,
          bottom: 15,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }
}

enum TextFormFieldShape { RoundedBorder10, RoundedBorder15, RoundedBorder5 }

enum TextFormFieldPadding {
  PaddingAll14,
  PaddingAll15,
  PaddingAll20,
  PaddingT14,
}

enum TextFormFieldVariant {
  None,
  OutlineGreen100,
  fillSynOrange100,
  OutlineGray100,
}

enum TextFormFieldFontStyle { Regular12Bluegray900, Medium16, Medium20 }
