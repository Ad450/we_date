import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_date/core/utils/image_urls.dart';
import 'package:we_date/core/widget/we_date_button.dart';
import 'package:we_date/features/auth/screens/signup.dart';

class AuthLandingPage extends StatelessWidget {
  const AuthLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                ImageURLS.authLandingPage,
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.48,
                right: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 300,
                      child: Text(
                        "Find new \nfriends nearby",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "With millions of users all over the world, we \ngive you the ability to connect with people \nno matter where you are",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 15),
                    WeDateButton(
                      text: "Log in",
                      textFontSize: 20,
                      textColor: const Color.fromARGB(255, 183, 61, 122),
                      backgroundColor: Colors.white,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 5),
                    WeDateButton(
                      text: "Sign Up",
                      textFontSize: 20,
                      textColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 183, 61, 122),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const Signup()),
                          (route) => false,
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "Log in with",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[850]),
                          textAlign: TextAlign.center,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                          IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.google)),
                          IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.facebook))
                        ]),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
