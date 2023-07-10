import "dart:io";

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:image_picker/image_picker.dart";
import "package:we_date/core/widget/app_theme.dart";

class RectangularPictureAvatar extends StatelessWidget {
  final VoidCallback handlePickImage;
  final bool isFileSelected;
  final XFile? xfile;

  const RectangularPictureAvatar({
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
      child: OverflowBox(
        minHeight: 0,
        minWidth: 0,
        alignment: Alignment.topLeft,
        child: Stack(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circularar(100),
                color: profileColor,
                shape: BoxShape.rectangle,
              ),
              child: !isFileSelected
                  ? Icon(
                      Icons.camera_enhance_outlined,
                      size: 40,
                      color: Colors.grey.withOpacity(0.4),
                    )
                  : ClipRRect(
                      child: Container(
                        decoration: const BoxDecoration(shape: BoxShape.rectangle),
                        child: Image(
                          image: FileImage(File(xfile!.path)),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

              // Image(
              //     image: FileImage(File(xfile!.path)),
              //     fit: BoxFit.cover,
              //   ),
            ),
            if (isFileSelected)
              Positioned(
                bottom: -9,
                right: -5,
                child: Container(
                  height: 40,
                  width: 25,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.edit, size: 10, color: Colors.white),
                ),
              )
          ],
        ),
      ),
    );
  }
}
