import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:image_picker/image_picker.dart";
import "package:we_date/core/utils/functions.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/textFormField.dart";
import "package:we_date/core/widget/we_date_button.dart";
import "package:we_date/features/profile/screens/gender.dart";
import "package:we_date/features/profile/screens/state/profile_bloc.dart";
import "package:we_date/features/profile/screens/state/profile_state.dart";
import 'package:we_date/features/profile/screens/widgets/picture_avatar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _lastNameFocus = FocusNode();
  final _firstNameFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();

  bool _isFileSelected = false;
  late ImagePicker _imagePicker;
  XFile? xfile;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  @override
  dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  Future<void> _handlePickImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _isFileSelected = true;
        xfile = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  ImageURLS.profile,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                ),
                const Positioned(
                  left: 20,
                  top: 100,
                  child: Text(
                    "Profile Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Positioned(
                  left: (getVisibleScreenWidth(context) - 160) / 2,
                  top: 160,
                  child: Align(
                      alignment: Alignment.center,
                      child: PictureAvatar(
                        isFileSelected: _isFileSelected,
                        handlePickImage: _handlePickImage,
                        xfile: xfile,
                      )),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.56,
                  right: 20,
                  left: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      children: [
                        Form(
                            key: _formKey,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WeDateTextFormField(
                                  controller: _firstNameController,
                                  keyboardType: TextInputType.text,
                                  hintText: "First Name",
                                  focusNode: _firstNameFocus,
                                  onEditingComplete: () => _lastNameFocus.requestFocus(),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Type in first name";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 10),
                                WeDateTextFormField(
                                  controller: _lastNameController,
                                  keyboardType: TextInputType.text,
                                  hintText: "Last Name",
                                  focusNode: _lastNameFocus,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Type in Last name";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 30),
                                BlocListener<ProfileBloc, ProfileState>(
                                  listenWhen: (_, state) => state.maybeMap(
                                    orElse: () => false,
                                    updateProfileLoading: (_) => true,
                                  ),
                                  listener: (_, state) {},
                                  child: WeDateButton(
                                    text: "Confirm",
                                    textFontSize: 20,
                                    textColor: Colors.white,
                                    backgroundColor: const Color.fromARGB(255, 183, 61, 122),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => GenderScreen(
                                                  firstName: _firstNameController.text,
                                                  lastName: _lastNameController.text,
                                                  xfile: xfile?.path)),
                                          (route) => false,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
