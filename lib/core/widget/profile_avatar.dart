import "package:flutter/material.dart";
import "package:we_date/core/utils/image_urls.dart";

class ProfileAvatar extends StatelessWidget {
  final double? width;
  const ProfileAvatar({this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          width: width ?? 40,
          height: 40,
          decoration: const ShapeDecoration(
            image: DecorationImage(image: AssetImage(ImageURLS.authLandingPage), fit: BoxFit.cover),
            shape: CircleBorder(
                side: BorderSide(
              color: Colors.white,
              width: 2,
            )),
          ),
          // child: const Icon(Icons.person, color: Colors.grey, size: 30),
        ));
  }
}
