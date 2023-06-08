import "package:flutter/material.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/profile_avatar.dart";

class NearbyTile extends StatelessWidget {
  const NearbyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(ImageURLS.profile),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 5,
            left: 5,
            child: Row(
              children: const [
                ProfileAvatar(width: 40),
                SizedBox(width: 5),
                Text(
                  "DillonDarian12",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
