import 'package:flutter/material.dart';

  class CustomSnackBar extends SnackBar {
  CustomSnackBar({
    Key ?key,
    String ?message,
    Color ?backgroundColor,
    final Duration ?duration,
    Animation<double> ?animation,
    ShapeBorder ?shape,
    SnackBarAction ?action,
    TextStyle ?textStyle,
    EdgeInsetsGeometry ?margin,
    EdgeInsetsGeometry ?padding,
  }) : super(
    key: key,
    content: Text(
      message??"",
      style: textStyle,
    ),
    backgroundColor: backgroundColor,
    duration: duration??Duration(seconds: 3),
    animation: animation,
    shape: shape,
    action: action,
    margin: margin,
    padding: padding,
  );
}
