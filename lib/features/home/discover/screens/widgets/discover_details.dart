import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/features/home/discover/state/discover_bloc.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_bloc.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_events.dart';

class DiscoverDetails extends StatefulWidget {
  final String imageURL;

  const DiscoverDetails({Key? key, required this.imageURL}) : super(key: key);

  @override
  State<DiscoverDetails> createState() => _DiscoverDetailsState();
}

class _DiscoverDetailsState extends State<DiscoverDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 0.7,
          collapsedHeight: MediaQuery.of(context).size.height * 0.3,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.imageURL), fit: BoxFit.cover),
            ),
          ),
          floating: true,
          pinned: true,
          leading: GestureDetector(
              onTap: () {
                context.read<ToggleDiscoverDetailsBloc>().add(HideDiscoverDetails());
              },
              child: const Icon(Icons.cancel, color: Colors.grey, size: 50)),
          actions: const [Icon(Icons.more_vert, color: Colors.grey, size: 50)],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "DillonDarian99",
                            style: TextStyle(
                              color: Color.fromARGB(255, 67, 65, 65),
                              fontSize: 25,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 28, 33, 62),
                            radius: 15,
                            child: Icon(
                              Icons.more_horiz,
                              size: 30,
                              color: Color.fromARGB(255, 84, 81, 81),
                            ),
                          )
                        ],
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Kumasi, GHANA",
                          style: TextStyle(color: Color.fromARGB(255, 122, 118, 118)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Divider(color: Colors.grey, thickness: 2),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "About",
                          style: TextStyle(
                            color: Color.fromARGB(255, 67, 65, 65),
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          """Lorem Ipsum is simply dummy text of the printing and 
typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to 
make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting
                            """,
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            childCount: 1,
          ),
        )
      ],
    );
  }
}
