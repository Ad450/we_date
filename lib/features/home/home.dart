import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:we_date/features/home/discover/screens/discover.dart';
import "package:we_date/features/home/favorites/screens/favorites.dart";
import "package:we_date/features/home/matches/screens/matches.dart";
import "package:we_date/features/home/stories/screens/create_story.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0; // set to the first widget and item in the navigationBar

  void _onNavigationBarItemSelect(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: <Widget>[
          const Explore(),
          const MatchesScreen(),
          Container(height: double.infinity, color: Colors.transparent),
          const CreateStory(),
        ][selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.periscope), label: "Explore"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.heartCircleBolt), label: "Matches"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.message), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
        ],
        onTap: _onNavigationBarItemSelect,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
