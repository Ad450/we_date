import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:we_date/features/home/favorites/screens/favorites.dart";
import "package:we_date/features/home/nearby/screens/nearby.dart";

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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 40, 66),
      body: SafeArea(
        child: <Widget>[
          const NearbyScreen(),
          const Favorites(),
          Container(height: double.infinity, color: Colors.transparent),
          Container(height: double.infinity, color: Colors.transparent),
          Container(height: double.infinity, color: Colors.transparent)
        ][selectedIndex],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: const Color.fromARGB(255, 36, 40, 66),
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), border: Border.all(width: 2, color: Colors.black12)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.circle), label: "Nearby"),
                BottomNavigationBarItem(icon: Icon(Icons.content_copy), label: "Discover"),
                BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites"),
                BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.message), label: "Message"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
              ],
              onTap: _onNavigationBarItemSelect,
              selectedItemColor: Colors.purple[400],
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              type: BottomNavigationBarType.shifting,
            ),
          ),
        ),
      ),
    );
  }
}
