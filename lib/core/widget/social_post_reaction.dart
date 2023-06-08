import "package:flutter/material.dart";

class SocialPostReaction extends StatelessWidget {
  final IconData icon;
  final Color? color;
  const SocialPostReaction({
    required this.icon,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: color ?? Colors.white,
        ),
        Text("14.1k", style: TextStyle(color: color ?? Colors.white, fontSize: 10))
      ],
    );
  }
}
