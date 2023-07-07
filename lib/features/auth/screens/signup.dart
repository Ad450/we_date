import "package:flutter/material.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/textFormField.dart";
import "package:we_date/core/widget/we_date_button.dart";
import "package:we_date/features/profile/screens/profile.dart";

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                ImageURLS.signup,
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: 30,
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
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              "Create an account",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(height: 40),
                          WeDateTextFormField(
                            controller: _usernameController,
                            keyboardType: TextInputType.text,
                            hintText: "username",
                          ),
                          const SizedBox(height: 10),
                          WeDateTextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            hintText: "email",
                          ),
                          const SizedBox(height: 10),
                          WeDateTextFormField(
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            hintText: "phone",
                          ),
                          const SizedBox(height: 10),
                          WeDateTextFormField(
                            controller: _dateOfBirthController,
                            keyboardType: TextInputType.datetime,
                            hintText: "Date of birth (ie. DD/MM/YY)",
                          ),
                          const SizedBox(height: 10),
                          WeDateTextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            hintText: "password",
                          ),
                          const SizedBox(height: 40),
                          // WeDateButton(
                          //   leading: null,
                          //   text: "Continue",
                          //   textFontSize: 20,
                          //   textColor: Colors.white,
                          //   backgroundColor: const Color.fromARGB(255, 183, 61, 122),
                          //   onPressed: () {
                          //     Navigator.pushAndRemoveUntil(
                          //       context,
                          //       MaterialPageRoute(builder: (context) => const Profile()),
                          //       (route) => false,
                          //     );
                          //   },
                          // ),
                        ],
                      )),
                    ],
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
