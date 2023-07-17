import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/spacer.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "mutual_matches.dart";
import "widgets/settings_tile.dart";

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height * 0.35,
        width: double.infinity,
        decoration:
            const BoxDecoration(image: DecorationImage(image: AssetImage(ImageURLS.artsImg), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Me",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.background,
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                GestureDetector(
                  child: FaIcon(
                    FontAwesomeIcons.pencil,
                    color: theme.colorScheme.background,
                    size: 20,
                  ),
                )
              ]),
        ),
      ),
      Container(
        color: theme.colorScheme.onSurface, //theme.colorScheme.background,
        height: MediaQuery.of(context).size.height * 0.52,
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
          child: ListView(
            children: <Widget>[
              SettingsTile(onTap: () {}, title: "My Profile", icon: FontAwesomeIcons.user),
              verticalSpace(10),
              SettingsTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MutualMatches(),
                      ),
                    );
                  },
                  title: "Mutual Matches",
                  icon: FontAwesomeIcons.heartCircleBolt),
              verticalSpace(10),
              SettingsTile(onTap: () {}, title: "Interest", icon: FontAwesomeIcons.heart),
              verticalSpace(10),
              SettingsTile(onTap: () {}, title: "Subscription", icon: FontAwesomeIcons.snowflake),
              verticalSpace(10),
              SettingsTile(onTap: () {}, title: "Notifications", icon: FontAwesomeIcons.solidBell),
              verticalSpace(10),
              SettingsTile(onTap: () {}, title: "Settings", icon: FontAwesomeIcons.gear),
            ],
          ),
        ),
      )
    ]);
  }
}
