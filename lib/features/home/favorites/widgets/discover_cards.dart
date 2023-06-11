import "package:flutter/material.dart";

class DiscoverCard extends StatelessWidget {
  final String url;
  const DiscoverCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.white,
                // child: const Text("This is inside the positioned widget")),
              )),
          Positioned(
              bottom: 35,
              left: 50,
              child: Row(
                children: const [
                  CircleAvatar(radius: 40, backgroundColor: Colors.red),
                  SizedBox(width: 30),
                  CircleAvatar(radius: 40, backgroundColor: Colors.yellow),
                  SizedBox(width: 30),
                  CircleAvatar(radius: 40, backgroundColor: Colors.green),
                ],
              )),
        ]),
      ),
    );
  }
}
