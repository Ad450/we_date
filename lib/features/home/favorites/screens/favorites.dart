import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:photo_card_swiper/models/photo_card.dart';
import 'package:photo_card_swiper/photo_card_swiper.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import 'package:stacked_list_carousel/stacked_list_carousel.dart';
import 'package:swipe_deck/swipe_deck.dart';
import 'package:we_date/features/home/favorites/widgets/discover_cards.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List imgPaths = [
    "assets/swipe_1.webp",
    "assets/swipe_2.avif",
    "assets/swipe_3.webp",
    "assets/dating_1.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Discover",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundColor: Colors.white30,
                  radius: 19,
                  child: Icon(Icons.menu, color: Colors.grey),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: AppinioSwiper(
              padding: EdgeInsets.zero,
              cardsCount: imgPaths.length,
              onSwiping: (AppinioSwiperDirection direction) {
                // print(direction.toString());
              },
              cardsBuilder: (BuildContext context, int index) {
                return DiscoverCard(url: imgPaths[index]);
              },
            ),
          ),
          // const DiscoverCard(url: "assets/swipe_1.webp")
        ],
      ),
    );
  }
}
