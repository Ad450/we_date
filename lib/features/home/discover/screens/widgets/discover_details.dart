import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/core/utils/image_urls.dart';
import 'package:we_date/core/widget/app_theme.dart';
import 'package:we_date/core/widget/spacer.dart';
import 'package:we_date/features/home/discover/state/discover_bloc.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_bloc.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_events.dart';
import 'package:flutter/services.dart' show rootBundle;

class DiscoverDetails extends StatefulWidget {
  final String imageURL;

  const DiscoverDetails({Key? key, required this.imageURL}) : super(key: key);

  @override
  State<DiscoverDetails> createState() => _DiscoverDetailsState();
}

class _DiscoverDetailsState extends State<DiscoverDetails> {
  // for development
  String dummyDescription = "";

  // load dummy text
  Future<void> _loadDummyText() async {
    final text = await rootBundle.loadString('assets/dummy_text.txt');
    setState(() {
      dummyDescription = text;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadDummyText();
  }

  List<String> interests = ["Photography", "Shopping", "Gym and fitness", "Pets", "Charity", "Social Networking"];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.imageURL), // change image provider to FileImage
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                // color: Colors.red,
              ),
              Expanded(
                child: Material(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  elevation: 20,
                  color: theme.colorScheme.background,
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Alica Rose, 22",
                                style: theme.textTheme.displayMedium?.copyWith(
                                  fontSize: 30,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Christian",
                                style: theme.textTheme.titleLarge?.copyWith(
                                  fontSize: 16,
                                  color: theme.colorScheme.surface,
                                ),
                              ),
                            ),
                            verticalSpace(3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.locationDot,
                                  color: theme.colorScheme.surface,
                                  size: 16,
                                ),
                                horizontalSpace(3),
                                Text(
                                  "New York ,USA, 15 miles away",
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    color: theme.colorScheme.surface,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            verticalSpace(40),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "About Me",
                                style: theme.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: theme.colorScheme.surface,
                                ),
                              ),
                            ),
                            verticalSpace(10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(dummyDescription,
                                  style: theme.textTheme.titleLarge
                                      ?.copyWith(color: theme.colorScheme.surface, fontSize: 16),
                                  textAlign: TextAlign.justify),
                            ),
                            verticalSpace(10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Interested In",
                                style: theme.textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: theme.colorScheme.surface,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Wrap(
                                spacing: 10,
                                children: interests
                                    .map(
                                      (e) => Chip(
                                        label: Text(e),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                            verticalSpace(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Photos",
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: theme.colorScheme.surface,
                                  ),
                                ),
                                Text(
                                  "view all",
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: theme.colorScheme.primary,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            // photos
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [ImageURLS.cooking, ImageURLS.shoppingImg, ImageURLS.gymImg]
                                    .map(
                                      (e) => Padding(
                                        padding: const EdgeInsets.only(top: 5, right: 8),
                                        child: Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: theme.colorScheme.onSurface,
                                              image: DecorationImage(
                                                image: AssetImage(e), // change to FileImage later
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => context.read<ToggleDiscoverDetailsBloc>().add(
                            HideDiscoverDetails(),
                          ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: theme.colorScheme.background,
                        size: 40,
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: theme.colorScheme.background,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Material(
                      shape: const CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: theme.colorScheme.background,
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
                    onTap: () {},
                    child: Material(
                      shape: const CircleBorder(),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: theme.colorScheme.background,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: theme.colorScheme.primary,
                          child: FaIcon(
                            FontAwesomeIcons.solidHeart,
                            color: theme.colorScheme.background,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Material(
                      shape: const CircleBorder(),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: theme.colorScheme.background,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
