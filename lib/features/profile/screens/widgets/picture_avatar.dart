import "dart:io";

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:image_picker/image_picker.dart";

class PictureAvatar extends StatelessWidget {
  final VoidCallback handlePickImage;
  final bool isFileSelected;
  final XFile? xfile;

  const PictureAvatar({
    super.key,
    required this.handlePickImage,
    required this.isFileSelected,
    required this.xfile,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          Container(
            width: 160,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color.fromARGB(255, 183, 61, 122),
            ),
            child: !isFileSelected
                ? const Icon(
                    Icons.person,
                    size: 120,
                    color: Colors.grey,
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: FileImage(File(xfile!.path)),
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
          Positioned(
              bottom: 0,
              right: 5,
              child: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 183, 61, 122),
                radius: 25,
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.camera),
                  onPressed: handlePickImage,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
