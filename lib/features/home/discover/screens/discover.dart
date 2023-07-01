import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/features/home/discover/screens/widgets/discover_details.dart';
import 'package:we_date/features/home/discover/state/discover_bloc.dart';
import 'package:we_date/features/home/discover/state/discover_state.dart';
import 'package:we_date/features/home/discover/screens/widgets/discover_cards.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List imgPaths = [
    "assets/swipe_1.webp",
    "assets/swipe_2.avif",
    "assets/swipe_3.webp",
    "assets/dating_1.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverBloc, DiscoverState>(
      builder: (context, state) {
        if (state is ShowDiscoverDetailsState) {
          return DiscoverDetails(imageURL: state.imageURL);
        } else {
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
                  height: MediaQuery.of(context).size.height * 0.75,
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
      },
    );
  }
}
