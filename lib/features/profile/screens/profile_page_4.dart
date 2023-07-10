import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:we_date/core/utils/constants.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/core/widget/spacer.dart';
import 'package:we_date/core/widget/we_date_button.dart';
import 'package:we_date/features/search/screens/search.dart';

import 'widgets/rectangular_picture_avatar.dart';

class ProfilePage4 extends StatefulWidget {
  const ProfilePage4({Key? key}) : super(key: key);

  @override
  State<ProfilePage4> createState() => _ProfilePage4State();
}

class _ProfilePage4State extends State<ProfilePage4> {
  bool _isFileSelected = false;
  late ImagePicker _imagePicker;
  XFile? _xfile;
  Set<String> publicPhotosPaths = {};
  Set<String> privatePhotosPaths = {};

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _handlePickImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _isFileSelected = true;
        _xfile = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: theme.colorScheme.primary,
                          weight: 10,
                        ),
                      ),
                      Text(
                        "Complete your Profile",
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Steps 4/4",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              verticalSpace(10),
              LinearPercentIndicator(
                padding: EdgeInsets.zero,
                width: getVisibleScreenWidth(context) - 30,
                lineHeight: 3.0,
                percent: 1.0,
                progressColor: theme.colorScheme.secondary,
              ),
              verticalSpace(25),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add Public Photos",
                  style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                ),
              ),
              verticalSpace(8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Public Photos can be seen by all members \nthat visit your profile",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontSize: 15,
                    color: theme.colorScheme.surface,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              verticalSpace(8),
              SizedBox(
                height: 130,
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10),
                  itemCount: publicPhotos.length,
                  itemBuilder: (context, index) {
                    return RectangularPictureAvatar(
                      handlePickImage: () async {
                        final image = await _imagePicker.pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          setState(() {
                            publicPhotos[index]["isSelected"] = true;
                            publicPhotos[index]["xfile"] = image;
                            publicPhotosPaths.add(image.path);
                          });
                        }
                      },
                      xfile: publicPhotos[index]["xfile"],
                      isFileSelected: publicPhotos[index]["isSelected"],
                    );
                  },
                ),
              ),
              verticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add Private Photos",
                  style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                ),
              ),
              verticalSpace(8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Private Photos only seen by members that you \nhave shared access with",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontSize: 15,
                    color: theme.colorScheme.surface,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              verticalSpace(8),
              SizedBox(
                height: 130,
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10),
                  itemCount: privatePhotos.length,
                  itemBuilder: (context, index) {
                    return RectangularPictureAvatar(
                      handlePickImage: () async {
                        final image = await _imagePicker.pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          setState(() {
                            privatePhotos[index]["isSelected"] = true;
                            privatePhotos[index]["xfile"] = image;
                            privatePhotosPaths.add(image.path);
                          });
                        }
                      },
                      xfile: privatePhotos[index]["xfile"],
                      isFileSelected: privatePhotos[index]["isSelected"],
                    );
                  },
                ),
              ),
              verticalSpace(150),
              WeDateButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const Search()));
                },
                paddingTop: 15,
                paddingBottom: 15,
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(theme.colorScheme.primary),
                ),
                child: Text(
                  "Complete",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.background,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
