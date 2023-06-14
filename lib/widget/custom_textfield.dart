import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final String? labelText;
  final int? maxLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? label;
  final double? textHeight;
  final Color? fillColor;
  final BorderSide? borderSides;
  final double? leftPadding;
  final double? top;
  final double? bottom;
  final int? maxLength;
  final double? rightPadding;
  final EdgeInsets? scrollPadding;
  final bool? obscureText;
  final void Function(String?)? onSaved;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Color? colorForTextField;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool? enabled;
  final double? fontSizeHint;
  final double? enterTextFontSize;
  final bool? expands;
  final String? nameText;
  final Color? hintColor;
  final double? height;
  final InputBorder? border;
  final double? widthS;

  const CustomTextField({
    Key? key,
     this.textEditingController,
    this.validator,
    this.colorForTextField,
    this.borderSides,
    this.suffixIcon,
    this.enabled,
    this.hintColor,
    this.height,
    this.scrollPadding,
    this.leftPadding,
    this.onChanged,
    this.onTap,
    this.fillColor,
    this.hintText,
    this.onSaved,
    this.labelText,
    this.obscureText,
    this.rightPadding,
    this.keyboardType,
    this.maxLines,
    this.prefixIcon,
    this.label,
    this.maxLength,
    this.textHeight,
    this.nameText,
    this.fontSizeHint,
    this.border,
    this.enterTextFontSize, this.top, this.bottom,this.expands, this.widthS,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.w),
      decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
      height: height,
      width: widthS,
      child: TextFormField(
        enabled: enabled,
        expands: false,
        onTap: onTap,
        onChanged: onChanged,
        keyboardType: keyboardType,
        onSaved: onSaved,
        scrollPadding: scrollPadding ?? const EdgeInsets.all(0.0),
        validator: validator,
        controller: textEditingController,
        obscureText: obscureText ?? false,
        maxLength: maxLength,
        maxLines: maxLines,
        cursorColor: Colors.black,
        style: TextStyle(
            color: colorForTextField ?? Colors.white,
            fontSize: enterTextFontSize ?? (26.sp),
            fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(right: rightPadding ?? 0, left: leftPadding ?? 0.h, top: top??0.h,bottom: bottom??0),
          label: label,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(
              height: textHeight,
              fontSize: fontSizeHint ?? (18),
              color: hintColor ??Colors.grey,
              fontWeight: FontWeight.w400,
              ),
          filled: true,
          fillColor: fillColor ?? ColorUtils.textFieldColor,
          border:border?? OutlineInputBorder(
              borderRadius: BorderRadius.circular(kIsWeb ? 0.5.w : 0.w), borderSide: borderSides ?? BorderSide.none),
        ),
      ),
    );
  }


}
