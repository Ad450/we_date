import 'package:flutter/material.dart';

class WeDateButton extends StatelessWidget {
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final VoidCallback onPressed;
  final double? textFontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final bool? hasLeading;
  final Widget? leading;
  final Widget child;

  const WeDateButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.textFontSize,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.buttonStyle,
    this.textStyle,
    this.hasLeading,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.only(
            top: paddingTop ?? 0,
            bottom: paddingBottom ?? 0,
            left: paddingLeft ?? 0,
            right: paddingRight ?? 0,
          ),
          child: child,
        ),
        //
        // hasLeading != null && hasLeading!
        //     ? Padding(
        //         padding: EdgeInsets.only(
        //           top: paddingTop ?? 0,
        //           bottom: paddingBottom ?? 0,
        //           left: paddingLeft ?? 0,
        //           right: paddingRight ?? 0,
        //         ),
        //         child: Row(children: <Widget>[
        //           leading ?? const SizedBox(),
        //           Text(
        //             text,
        //             style: textStyle,
        //           ),
        //         ]),
        //       )
        //     : Text(text, style: textStyle),
      ),
    );
  }
}
