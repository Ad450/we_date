import "package:flutter/material.dart";
import "package:liquid_swipe/liquid_swipe.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/features/onboarding/widgets/splash.dart";

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late LiquidController? liquidController;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      liquidController = LiquidController();
    }
  }

  @override
  void dispose() {
    liquidController = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!mounted) {
      return const Scaffold();
    }
    return LiquidSwipe(
      liquidController: liquidController,
      slideIconWidget: const Icon(Icons.arrow_back_ios, color: Colors.black),
      preferDragFromRevealedArea: true,
      enableLoop: false,
      pages: <Widget>[
        Splash(
          title: "DATE ME",
          subtitle: "The best way to meet people and try new activities. Let's get started",
          imgURL: ImageURLS.swipePage1,
          liquidController: liquidController,
        ),
        Splash(
          title: "Match with them",
          subtitle: "See who like and who likes you and connect with them",
          imgURL: ImageURLS.swipePage2,
          liquidController: liquidController,
        ),
        Splash(
          title: "Discover People",
          subtitle: "Discover the most suitable and compatible match for yourself",
          imgURL: ImageURLS.swipePage3,
          liquidController: liquidController,
        ),
      ],
    );
  }
}
