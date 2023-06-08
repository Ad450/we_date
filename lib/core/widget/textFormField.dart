import "package:flutter/material.dart";

class WeDateTextFormField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final bool? showLeadingIcon;
  final double? width;
  final Icon? icon;
  const WeDateTextFormField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    this.validator,
    this.showLeadingIcon,
    this.width,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white.withOpacity(0.5), Colors.white.withOpacity(0.2)],
          stops: const [0.0, 1.0],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
          icon: showLeadingIcon != null ? (showLeadingIcon! ? icon : null) : null,
        ),
      ),
    );
  }
}
