import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:we_date/features/home/discover/state/discover_bloc.dart";
import "package:we_date/features/home/discover/state/discover_events.dart";

class DiscoverCard extends StatelessWidget {
  final String url;
  const DiscoverCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(children: [
          GestureDetector(
            onTap: (){
              context.read<DiscoverBloc>().add(ShowDiscoverDetails(url));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.white,
                // child: const Text("This is inside the positioned widget")),
              )),
          Positioned(
              bottom: 120,
              left: 30,
              child: Row(
                children: const [
                  Material(
                      shape: CircleBorder(),
                      elevation: 10,
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.refresh,
                            color: Colors.pink,
                            size: 20,
                          ))),
                  SizedBox(width: 30),
                  Material(
                    elevation: 10,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.clear_rounded,
                          color: Colors.grey,
                          size: 40,
                        )),
                  ),
                  SizedBox(width: 30),
                  Material(
                      elevation: 10,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: Icon(
                            CupertinoIcons.flame_fill,
                            color: Color.fromARGB(255, 183, 61, 122),
                            size: 40,
                          ))),
                  SizedBox(width: 30),
                  Material(
                    elevation: 10,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          CupertinoIcons.star_fill,
                          color: Color.fromARGB(255, 212, 197, 65),
                          size: 20,
                        )),
                  ),
                ],
              )),
          Positioned(
              bottom: 40,
              left: 100,
              child: Column(
                children: const [
                  Text("Dillon Darian99", style: TextStyle(color: Color.fromARGB(255, 112, 111, 111), fontSize: 20)),
                  Text("Kumasi, Ghana", style: TextStyle(color: Color.fromARGB(255, 180, 176, 176), fontSize: 15)),
                ],
              ))
        ]),
      ),
    );
  }
}


