import 'package:flutter/cupertino.dart';
import '../utils/app_string.dart';

class CustomText extends StatelessWidget {
  final String name;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final Color? color;
  int? maxLines;
  TextOverflow? overflow;
  Color? decorationColor;
  String? fontFamily;

  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double? height;
  final TextDecoration? decoration;
  CustomText(
      {super.key,
      required this.name,
      this.maxLines,
      this.bottom,
      this.textAlign,
      required this.fontSize,
      required this.fontWeight,
       this.color,
      this.overflow,
      this.left,
      this.right,
      this.fontFamily,
      this.height,
      this.top,
      this.decoration,
      this.decorationColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top ?? 0, bottom: bottom ?? 0, left: left ?? 0, right: right ?? 0),
      child: Text(
        name,
        maxLines: maxLines,
        textAlign: textAlign,
        overflow: overflow,
        style: TextStyle(
          height: height,
          fontFamily: fontFamily ?? StringUtils.fontFamily,
          decoration: decoration,
          decorationColor: decorationColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          // fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
