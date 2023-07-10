import "dart:io";

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:image_picker/image_picker.dart";
import "package:we_date/core/widget/app_theme.dart";

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
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: handlePickImage,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: !isFileSelected ? profileColor : null,
            backgroundImage: isFileSelected ? FileImage(File(xfile!.path)) : null,
            child: !isFileSelected
                ? Icon(
                    Icons.camera_enhance_outlined,
                    size: 40,
                    color: Colors.grey.withOpacity(0.4),
                  )
                : null,
          ),
          Positioned(
            bottom: 4,
            right: 5,
            child: Container(
              height: 30,
              width: 20,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.camera, size: 10, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
