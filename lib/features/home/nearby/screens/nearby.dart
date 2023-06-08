import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/profile_avatar.dart";
import "package:we_date/core/widget/social_post.dart";
import "package:we_date/core/widget/textFormField.dart";
import "package:we_date/features/home/nearby/widgets/nearbyTile.dart";

class NearbyScreen extends StatefulWidget {
  const NearbyScreen({super.key});

  @override
  State<NearbyScreen> createState() => _NearbyScreenState();
}

class _NearbyScreenState extends State<NearbyScreen> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                    image: DecorationImage(image: NetworkImage(ImageURLS.profile), fit: BoxFit.cover),
                    shape: CircleBorder(
                        side: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                  ),
                  // child: const Icon(Icons.person, color: Colors.grey, size: 30),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Nearby",
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
                  onTap: () {}),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    NearbyTile(),
                    SizedBox(width: 10),
                    NearbyTile(),
                    SizedBox(width: 10),
                    NearbyTile(),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: const [
                  SocialPost(),
                  SizedBox(height: 15),
                  SocialPost(),
                  SizedBox(height: 15),
                  SocialPost(),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
