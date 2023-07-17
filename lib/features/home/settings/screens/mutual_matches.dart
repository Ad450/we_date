import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/core/widget/spacer.dart';

class MutualMatches extends StatelessWidget {
  const MutualMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    List imgPaths = [
      "assets/swipe_1.webp",
      "assets/swipe_2.avif",
      "assets/swipe_3.webp",
      "assets/dating_1.webp",
      "assets/swipe_2.avif",
      "assets/swipe_3.webp",
      "assets/swipe_1.webp",
    ];

    return Container(
      color: theme.colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: theme.colorScheme.primary,
                  ),
                ),
                horizontalSpace(10),
                Text(
                  "Mutual Matches",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            verticalSpace(20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.86,
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
      ),
    );
  }
}
