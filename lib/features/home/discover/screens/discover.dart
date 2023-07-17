import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_date/core/widget/spacer.dart';
import 'package:we_date/features/home/discover/screens/widgets/discover_details.dart';
import 'package:we_date/features/home/discover/state/discover_bloc.dart';
import 'package:we_date/features/home/discover/state/discover_state.dart';
import 'package:we_date/features/home/discover/screens/widgets/discover_cards.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_bloc.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_state.dart';

import 'widgets/custom_notification.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  late AppinioSwiperController apppinioController;

  List imgPaths = [
    "assets/swipe_1.webp",
    "assets/swipe_2.avif",
    "assets/swipe_3.webp",
    "assets/dating_1.webp",
  ];

  @override
  void initState() {
    super.initState();
    apppinioController = AppinioSwiperController();
  }

  void _onSwipe(AppinioSwiperDirection direction) {
    switch (direction) {
      case AppinioSwiperDirection.top:
        debugPrint("send match request");
        break;
      case AppinioSwiperDirection.bottom:
        debugPrint("decline");
        break;
      case AppinioSwiperDirection.right:
        debugPrint("send match request");
        break;
      case AppinioSwiperDirection.left:
        debugPrint("decline");
        break;
      case AppinioSwiperDirection.none:
        debugPrint("decline");
        break;
    }
  }

  @override
  void dispose() {
    super.dispose();
    apppinioController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ToggleDiscoverDetailsBloc, ToggleDiscoverDetailsState>(
      builder: (context, state) {
        if (state is ShowDiscoverDetailsState) {
          return DiscoverDetails(imageURL: state.imageURL);
        } else {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Explore",
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(onTap: () {}, child: const CustomNotificationWidget()),
                    ],
                  ),
                  verticalSpace(10),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: AppinioSwiper(
                          controller: apppinioController,
                          padding: EdgeInsets.zero,
                          cardsCount: imgPaths.length,
                          onSwiping: (AppinioSwiperDirection direction) => _onSwipe(direction),
                          cardsBuilder: (BuildContext context, int index) {
                            return DiscoverCard(url: imgPaths[index]);
                          },
                        ),
                      ),
                      verticalSpace(18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => apppinioController.swipeLeft(),
                            child: Material(
                              shape: const CircleBorder(),
                              elevation: 10,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: theme.colorScheme.onSurface,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25,
                                  child: FaIcon(
                                    FontAwesomeIcons.xmark,
                                    color: Colors.pink,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => apppinioController.swipeRight(),
                            child: Material(
                              shape: const CircleBorder(),
                              elevation: 10,
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: theme.colorScheme.onSurface,
                                child: const CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.white,
                                  child: FaIcon(
                                    FontAwesomeIcons.solidHeart,
                                    color: Colors.pink,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => apppinioController.swipeUp(),
                            child: Material(
                              shape: const CircleBorder(),
                              elevation: 10,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: theme.colorScheme.onSurface,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25,
                                  child: FaIcon(
                                    FontAwesomeIcons.solidStar,
                                    color: Colors.green,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
