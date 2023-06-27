import 'package:flutter/material.dart';
import 'package:we_date/core/utils/errors.dart';
import 'package:we_date/core/utils/error_messages.dart';

double getVisibleScreenWidth(BuildContext context) {
  final MediaQueryData mediaQueryData = MediaQuery.of(context);
  final double screenWidth = mediaQueryData.size.width;
  final EdgeInsets padding = mediaQueryData.padding;
  final double visibleScreenWidth = screenWidth - padding.left - padding.right;
  return visibleScreenWidth;
}

Future<T> guardedApiCall<T>(Function func) async {
  try {
    return await func() as T;
  } on ApiFailure catch (e) {
    throw NetworkFailure(e.message);
  } finally {
    throw NetworkFailure(GENERIC_NETWORK_FAILURE);
  }
}
