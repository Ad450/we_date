import 'package:flutter/material.dart';
import 'package:we_date/core/utils/image_urls.dart';
import 'package:we_date/core/widget/spacer.dart';
import 'package:we_date/features/home/home.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with TickerProviderStateMixin {
  double _radius = 30;
  late AnimationController _motionController;
  late Animation _motionAnimation;

  @override
  void initState() {
    super.initState();
    _motionController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
      lowerBound: 0.5,
    );

    _motionAnimation = CurvedAnimation(
      parent: _motionController,
      curve: Curves.ease,
    );

    _motionController.forward();
    _motionController.addStatusListener((status) {
      setState(() {
        if (status == AnimationStatus.completed) {
          _motionController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _motionController.forward();
        }
      });
    });

    _motionController.forward();
    _motionController.addListener(() {
      setState(() {
        _radius = _motionController.value * 100;
      });
    });
    _motionController.repeat();
  }

  @override
  void dispose() {
    _motionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageURLS.searchImg),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Searching",
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                verticalSpace(10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Your Nearby partners",
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: _radius,
              backgroundColor: theme.colorScheme.background,
              child: Icon(
                Icons.search,
                size: 30,
                color: theme.colorScheme.primary,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  "Next",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.background,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
