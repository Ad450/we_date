import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:we_date/core/datastore/shared_preferences.dart';
import 'package:we_date/core/di/configure_dependencies.dart';
import 'package:we_date/core/utils/constants.dart';
import 'package:we_date/core/widget/we_date_button.dart';
import 'package:we_date/features/auth/screens/auth_landing_page.dart';

class Splash extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imgURL;
  final LiquidController liquidController;

  const Splash({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imgURL,
    required this.liquidController,
  });

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final swipePageLength = 2; // starts from 0

  void _setHasSeenOrSkippedSplash() async {
    print("inside set has seen");
    await Injector.getIt.get<CustomSharedPreferences>().setBool(hasSeenOrSkippedSplash, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.62,
                child: Image.asset(
                  widget.imgURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 35,
              right: 20,
              child: InkWell(
                child: const Text(
                  "SKIP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // navigate to sign up and
                  _setHasSeenOrSkippedSplash();
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const AuthLandingPage()),
                    (route) => true,
                  );
                },
              ),
            ),
          ]),
          const SizedBox(height: 20),
          Text(
            "MEET UP",
            style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Text(
            widget.title,
            style: TextStyle(color: Colors.pink[400], fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: Text(
              widget.subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.grey[600]),
            ),
          ),
          const SizedBox(height: 35),
          WeDateButton(
            text: "NEXT",
            onPressed: () {
              if (widget.liquidController.currentPage != swipePageLength) {
                final nextPage = widget.liquidController.currentPage + 1;
                widget.liquidController.animateToPage(page: nextPage);
              } else {
                _setHasSeenOrSkippedSplash();
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const AuthLandingPage()),
                  (route) => true,
                );
              }
            },
            backgroundColor: const Color.fromARGB(255, 142, 75, 171),
            width: 150,
          )
        ],
      ),
    );
  }
}
