import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:we_date/core/widget/spacer.dart";
import "package:we_date/features/home/discover/state/discover_bloc.dart";
import "package:we_date/features/home/discover/state/toggle_discover_details_bloc.dart";
import "package:we_date/features/home/discover/state/toggle_discover_details_events.dart";

class DiscoverCard extends StatelessWidget {
  final String url;

  const DiscoverCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        context.read<ToggleDiscoverDetailsBloc>().add(ShowDiscoverDetails(url));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 20,
              left: 10,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                Text(
                  "Alica Rose, 22",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.background,
                  ),
                ),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.locationDot,
                      color: theme.colorScheme.background,
                      size: 15,
                    ),
                    horizontalSpace(3),
                    Text(
                      "New York, 15 miles away",
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: theme.colorScheme.background,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
