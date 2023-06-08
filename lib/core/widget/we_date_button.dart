import 'package:flutter/material.dart';

class WeDateButton extends StatelessWidget {
  final String text;
  final double? textPaddingLeft;
  final double? textPaddingRight;
  final double? textPaddingTop;
  final double? textPaddingBottom;
  final VoidCallback onPressed;
  final double? textFontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;

  const WeDateButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.textPaddingBottom,
      this.textPaddingLeft,
      this.textPaddingRight,
      this.textPaddingTop,
      this.textFontSize,
      this.backgroundColor,
      this.textColor,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor ?? Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            textPaddingLeft ?? 20,
            textPaddingTop ?? 15,
            textPaddingRight ?? 20,
            textPaddingBottom ?? 15,
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: textFontSize ?? 25, color: textColor),
          ),
        ),
      ),
    );
  }
}
