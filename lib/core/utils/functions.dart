import 'package:flutter/material.dart';

double getVisibleScreenWidth(BuildContext context) {
  final MediaQueryData mediaQueryData = MediaQuery.of(context);
  final double screenWidth = mediaQueryData.size.width;
  final EdgeInsets padding = mediaQueryData.padding;
  final double visibleScreenWidth = screenWidth - padding.left - padding.right;
  return visibleScreenWidth;
}
