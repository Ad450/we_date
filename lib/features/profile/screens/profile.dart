import "package:flutter/material.dart";
import "package:we_date/core/utils/functions.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/textFormField.dart";
import "package:we_date/core/widget/we_date_button.dart";
import "package:we_date/features/profile/screens/gender.dart";
import "package:we_date/features/profile/widgets/picture_avatar.dart";

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

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
                Positioned(
                    top: 45,
                    left: 20,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Skip",
                          style: TextStyle(
                            color: Color.fromARGB(255, 183, 61, 122),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )),
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
                  child: const Align(alignment: Alignment.center, child: PictureAvatar()),
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
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WeDateTextFormField(
                              controller: _firstNameController,
                              keyboardType: TextInputType.text,
                              hintText: "First Name",
                            ),
                            const SizedBox(height: 10),
                            WeDateTextFormField(
                              controller: _lastNameController,
                              keyboardType: TextInputType.text,
                              hintText: "Last Name",
                            ),
                            const SizedBox(height: 30),
                            WeDateButton(
                              text: "Confirm",
                              textFontSize: 20,
                              textColor: Colors.white,
                              backgroundColor: const Color.fromARGB(255, 183, 61, 122),
                              onPressed: () {
                                // Navigator.pushAndRemoveUntil(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => const GenderScreen()),
                                //   (route) => false,
                                // );
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const GenderScreen()));
                              },
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
