import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class PictureAvatar extends StatelessWidget {
  const PictureAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          Container(
              width: 160,
              height: 300,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: CircleBorder(
                    side: BorderSide(
                  color: Colors.white,
                  width: 5,
                )),
              ),
              child: const Icon(
                Icons.person,
                size: 120,
                color: Colors.grey,
              )),
          Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 183, 61, 122),
                radius: 25,
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.camera),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
