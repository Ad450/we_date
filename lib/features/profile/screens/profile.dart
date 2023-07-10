import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:image_picker/image_picker.dart";
import "package:we_date/core/utils/functions.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/app_theme.dart";
import "package:we_date/core/widget/date_of_birth_picker.dart";
import "package:we_date/core/widget/height_slider.dart";
import "package:we_date/core/widget/selectable_body_type_container.dart";
import "package:we_date/core/widget/selectable_gender_container.dart";
import "package:we_date/core/widget/selectable_height_container.dart";
import "package:we_date/core/widget/spacer.dart";
import "package:we_date/core/widget/textFormField.dart";
import "package:we_date/core/widget/we_date_button.dart";
import "package:we_date/features/profile/screens/gender.dart";
import "package:we_date/features/profile/screens/profile_page_2.dart";
import "package:we_date/features/profile/screens/state/profile_bloc.dart";
import "package:we_date/features/profile/screens/state/profile_state.dart";
import 'package:we_date/features/profile/screens/widgets/picture_avatar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import "package:we_date/core/widget/selectable_interest_container.dart";

class ProfilePage1 extends StatefulWidget {
  const ProfilePage1({super.key});

  @override
  State<ProfilePage1> createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  final _userNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _lastNameFocus = FocusNode();
  final _firstNameFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  String selectedGender = "";
  String selectedInterest = "";
  String selectedBodyType = "";
  String selectedHeightUnit = "Feet"; // default to feet
  late double sliderValue;

  bool _isFileSelected = false;
  late ImagePicker _imagePicker;
  XFile? xfile;

  @override
  void initState() {
    super.initState();
    selectedHeightUnit = "Feet";
    sliderValue = selectedHeightUnit == "Feet" ? 1.0 : 31.0;
    _imagePicker = ImagePicker();
  }

  @override
  dispose() {
    _userNameController.dispose();
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
                  Text(
                    "Complete your Profile",
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Steps 1/4",
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
                percent: 0.25,
                progressColor: theme.colorScheme.secondary,
              ),
              verticalSpace(15),
              PictureAvatar(
                handlePickImage: _handlePickImage,
                isFileSelected: _isFileSelected,
                xfile: xfile,
              ),
              verticalSpace(5),
              Text(
                "Profile Picture",
                style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.surface, fontSize: 15),
              ),
              verticalSpace(20),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _userNameController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(hintText: "Username"),
                    ),
                    verticalSpace(10),
                    SingleChildScrollView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const DateOfBirthPicker(),
                          horizontalSpace(10),
                          SelectableGenderContainer(
                            text: "Male",
                            hasLeading: true,
                            leadingIcon: Icons.male,
                            width: 80,
                            height: 50,
                            onSelect: () {
                              setState(() {
                                selectedGender = "Male";
                              });
                            },
                            isSelected: selectedGender == "Male",
                          ),
                          horizontalSpace(10),
                          SelectableGenderContainer(
                            text: "Female",
                            hasLeading: true,
                            leadingIcon: Icons.female,
                            width: 80,
                            height: 50,
                            onSelect: () {
                              setState(() {
                                selectedGender = "Female";
                              });
                            },
                            isSelected: selectedGender == "Female",
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(15),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Interested in",
                        style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    verticalSpace(8),
                    Row(
                      children: [
                        SelectableInterestContainer(
                          text: "Looking for Men",
                          hasLeading: false,
                          width: ((getVisibleScreenWidth(context) - 30) / 2) - 5,
                          height: 50,
                          onSelect: () {
                            setState(() {
                              selectedInterest = "Looking for Men";
                            });
                          },
                          isSelected: selectedInterest == "Looking for Men",
                        ),
                        horizontalSpace(10),
                        SelectableInterestContainer(
                          text: "Looking for Women",
                          hasLeading: false,
                          width: ((getVisibleScreenWidth(context) - 30) / 2) - 10,
                          height: 50,
                          onSelect: () {
                            setState(() {
                              selectedInterest = "Looking for Women";
                            });
                          },
                          isSelected: selectedInterest == "Looking for Women",
                        )
                      ],
                    ),
                    verticalSpace(15),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Body Type",
                        style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    verticalSpace(8),
                    SingleChildScrollView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SelectableBodyTypeContainer(
                            text: "Athletic",
                            width: 100,
                            height: 50,
                            onSelect: () {
                              setState(() {
                                selectedBodyType = "Athletic";
                              });
                            },
                            isSelected: selectedBodyType == "Athletic",
                          ),
                          horizontalSpace(10),
                          SelectableBodyTypeContainer(
                            text: "Average",
                            width: 100,
                            height: 50,
                            onSelect: () {
                              setState(() {
                                selectedBodyType = "Average";
                              });
                            },
                            isSelected: selectedBodyType == "Average",
                          ),
                          horizontalSpace(10),
                          SelectableBodyTypeContainer(
                            text: "Curvy",
                            width: 100,
                            height: 50,
                            onSelect: () {
                              setState(() {
                                selectedBodyType = "Curvy";
                              });
                            },
                            isSelected: selectedBodyType == "Curvy",
                          ),
                          horizontalSpace(10),
                          SelectableBodyTypeContainer(
                            text: "Thick",
                            width: 100,
                            height: 50,
                            onSelect: () {
                              setState(() {
                                selectedBodyType = "Thick";
                              });
                            },
                            isSelected: selectedBodyType == "Thick",
                          )
                        ],
                      ),
                    ),
                    verticalSpace(10),
                    // height
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      Text(
                        "Height",
                        style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        child: Row(children: [
                          SelectableHeightContainer(
                            text: "Feet",
                            width: 60,
                            height: 30,
                            onSelect: () {
                              setState(() {
                                selectedHeightUnit = "Feet";
                              });
                            },
                            isSelected: selectedHeightUnit == "Feet",
                          ),
                        ]),
                      )
                    ]),
                    HeightSlider(
                      value: sliderValue,
                      onChange: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                      },
                      isCm: selectedHeightUnit == "Cm",
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        sliderValue.toString().length > 2
                            ? sliderValue.toString().substring(0, 3)
                            : sliderValue.toString(),
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: theme.colorScheme.primary,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    verticalSpace(35),
                    WeDateButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage2()));
                      },
                      paddingTop: 15,
                      paddingBottom: 15,
                      buttonStyle: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(theme.colorScheme.primary),
                      ),
                      child: Text(
                        "Save & Continue",
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: theme.colorScheme.background,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    )

        // SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Stack(
        //         children: [
        //           Image.asset(
        //             ImageURLS.profile,
        //             fit: BoxFit.cover,
        //             width: double.infinity,
        //             height: MediaQuery.of(context).size.height,
        //           ),
        //           const Positioned(
        //             left: 20,
        //             top: 100,
        //             child: Text(
        //               "Profile Details",
        //               style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 30,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //               textAlign: TextAlign.start,
        //             ),
        //           ),
        //           Positioned(
        //             left: (getVisibleScreenWidth(context) - 160) / 2,
        //             top: 160,
        //             child: Align(
        //                 alignment: Alignment.center,
        //                 child: PictureAvatar(
        //                   isFileSelected: _isFileSelected,
        //                   handlePickImage: _handlePickImage,
        //                   xfile: xfile,
        //                 )),
        //           ),
        //           Positioned(
        //             top: MediaQuery.of(context).size.height * 0.56,
        //             right: 20,
        //             left: 20,
        //             child: Padding(
        //               padding: const EdgeInsets.all(0),
        //               child: Column(
        //                 children: [
        //                   Form(
        //                       key: _formKey,
        //                       autovalidateMode: AutovalidateMode.onUserInteraction,
        //                       child: Column(
        //                         crossAxisAlignment: CrossAxisAlignment.start,
        //                         children: [
        //                           WeDateTextFormField(
        //                             controller: _firstNameController,
        //                             keyboardType: TextInputType.text,
        //                             hintText: "First Name",
        //                             focusNode: _firstNameFocus,
        //                             onEditingComplete: () => _lastNameFocus.requestFocus(),
        //                             validator: (value) {
        //                               if (value == null || value.isEmpty) {
        //                                 return "Type in first name";
        //                               }
        //                               return null;
        //                             },
        //                           ),
        //                           const SizedBox(height: 10),
        //                           WeDateTextFormField(
        //                             controller: _lastNameController,
        //                             keyboardType: TextInputType.text,
        //                             hintText: "Last Name",
        //                             focusNode: _lastNameFocus,
        //                             validator: (value) {
        //                               if (value == null || value.isEmpty) {
        //                                 return "Type in Last name";
        //                               }
        //                               return null;
        //                             },
        //                           ),
        //                           const SizedBox(height: 30),
        //                           BlocListener<ProfileBloc, ProfileState>(
        //                             listenWhen: (_, state) => state.maybeMap(
        //                               orElse: () => false,
        //                               updateProfileLoading: (_) => true,
        //                             ),
        //                             listener: (_, state) {},
        //                             // child: WeDateButton(
        //                             //   leading: null,
        //                             //   text: "Confirm",
        //                             //   textFontSize: 20,
        //                             //   textColor: Colors.white,
        //                             //   backgroundColor: const Color.fromARGB(255, 183, 61, 122),
        //                             //   onPressed: () {
        //                             //     if (_formKey.currentState!.validate()) {
        //                             //       Navigator.pushAndRemoveUntil(
        //                             //         context,
        //                             //         MaterialPageRoute(
        //                             //             builder: (context) => GenderScreen(
        //                             //                 firstName: _firstNameController.text,
        //                             //                 lastName: _lastNameController.text,
        //                             //                 xfile: xfile?.path)),
        //                             //         (route) => false,
        //                             //       );
        //                             //     }
        //                             //   },
        //                             // ),
        //                           ),
        //                         ],
        //                       )),
        //                 ],
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
