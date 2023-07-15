import "package:appinio_swiper/appinio_swiper.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:we_date/core/utils/functions.dart";
import "package:we_date/core/widget/spacer.dart";
import "package:we_date/core/widget/we_date_button.dart";
import "package:we_date/features/home/discover/screens/widgets/custom_notification.dart";
import "package:we_date/features/home/discover/screens/widgets/discover_cards.dart";

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  bool isSwipe = true;
  late AppinioSwiperController apppinioController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apppinioController = AppinioSwiperController();
  }

  List imgPaths = [
    "assets/swipe_1.webp",
    "assets/swipe_2.avif",
    "assets/swipe_3.webp",
    "assets/dating_1.webp",
    "assets/swipe_2.avif",
    "assets/swipe_3.webp",
    "assets/swipe_1.webp",
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Matches",
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(onTap: () {}, child: const CustomNotificationWidget()),
            ],
          ),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WeDateButton(
                onPressed: () {
                  setState(() {
                    isSwipe = true;
                  });
                },
                paddingTop: 10,
                paddingBottom: 10,
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    isSwipe ? theme.colorScheme.secondary : Colors.white10,
                  ),
                ),
                width: (getVisibleScreenWidth(context) / 2) - 20,
                child: Text(
                  "Swipe",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.background,
                  ),
                ),
              ),
              WeDateButton(
                onPressed: () {
                  setState(() {
                    isSwipe = false;
                  });
                },
                paddingTop: 10,
                paddingBottom: 10,
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    isSwipe ? Colors.white10 : theme.colorScheme.secondary,
                  ),
                ),
                width: (getVisibleScreenWidth(context) / 2) - 20,
                child: Text(
                  "Grid",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.background,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(20),
          if (isSwipe)
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.65,
              child: AppinioSwiper(
                controller: apppinioController,
                padding: EdgeInsets.zero,
                cardsCount: imgPaths.length,
                onSwiping: (AppinioSwiperDirection direction) {},
                cardsBuilder: (BuildContext context, int index) {
                  return DiscoverCard(url: imgPaths[index]);
                },
              ),
            ),
          if (!isSwipe)
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: imgPaths.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                        height: (getVisibleScreenWidth(context) / 2) - 5,
                        width: (getVisibleScreenWidth(context) / 2) - 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: (getVisibleScreenWidth(context) / 2) - 30,
                              height: (getVisibleScreenWidth(context) / 2) - 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage(imgPaths[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            verticalSpace(5),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Alica Rose, 22",
                                style: theme.textTheme.titleLarge?.copyWith(
                                  color: theme.colorScheme.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            verticalSpace(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.locationDot,
                                  color: theme.colorScheme.surface,
                                  size: 14,
                                ),
                                horizontalSpace(3),
                                Text(
                                  "New York ,USA, 15 miles away",
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    color: theme.colorScheme.surface,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ));
                    ;
                  }),
            ),
        ],
      ),
    );
  }
}
