import "package:flutter/material.dart";
import "package:liquid_swipe/liquid_swipe.dart";
import "package:we_date/features/onboarding/widgets/splash.dart";

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late LiquidController liquidController;
  final pages = <Widget>[
    const Splash(
      title: "DATE ME",
      subtitle: "The best way to meet people and try new activities. Let's get started",
      imgURL:
          "https://img.washingtonpost.com/rf/image_960w/2010-2019/WashingtonPost/2016/12/13/Interactivity/Images/iStock-483301694.jpg",
    ),
    const Splash(
      title: "Match with them",
      subtitle: "See who like and who likes you and connect with them",
      imgURL:
          "https://hips.hearstapps.com/hmg-prod/images/gettyimages-1676481910.jpg?crop=0.668xw:1.00xh;0.153xw,0&resize=360:*",
    ),
    const Splash(
      title: "Discover People",
      subtitle: "Discover the most suitable and compatible match for yourself",
      imgURL: "https://www.singleblackmale.org/wp-content/uploads/2014/03/couple-on-date.jpg",
    ),
  ];

  @override
  void initState() {
    super.initState();
    liquidController = LiquidController();
  }

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      liquidController: liquidController,
      slideIconWidget: const Icon(Icons.arrow_back_ios, color: Colors.black),
      preferDragFromRevealedArea: true,
      enableLoop: false,
      onPageChangeCallback: (int pageIndex) {
        if (pageIndex == pages.indexOf(pages.last)) {
          // navigate to sign up and login
        }
      },
      pages: pages,
    );
  }
}
