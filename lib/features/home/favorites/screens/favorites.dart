import "package:flutter/material.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/textFormField.dart";
import "package:we_date/features/home/nearby/widgets/nearbyTile.dart";

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundColor: Colors.white30,
                  radius: 19,
                  child: Icon(Icons.menu, color: Colors.grey),
                ),
              ),
              WeDateTextFormField(
                controller: _searchController,
                keyboardType: TextInputType.text,
                hintText: "Search",
                icon: const Icon(Icons.search, color: Colors.white, size: 30),
                showLeadingIcon: true,
                width: 250,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 60,
                  height: 40,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(image: AssetImage(ImageURLS.profile), fit: BoxFit.cover),
                    shape: CircleBorder(
                        side: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Favorites",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  )),
              InkWell(
                child: const Text("View all",
                    style: TextStyle(
                      color: Color.fromARGB(255, 183, 61, 122),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: gridItems.length,
              itemBuilder: ((context, index) => gridItems[index]),
            ),
          )
        ],
      ),
    );
  }
}

List gridItems = List.generate(10, (index) => const NearbyTile());
