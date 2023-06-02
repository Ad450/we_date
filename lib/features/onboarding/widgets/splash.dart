import 'package:flutter/material.dart';
import 'package:we_date/core/widget/streamify_button.dart';

class Splash extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imgURL;
  const Splash({super.key, required this.title, required this.subtitle, required this.imgURL});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.62,
                child: Image.network(
                  widget.imgURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]),
          const SizedBox(height: 20),
          Text(
            "MEET UP",
            style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Text(
            widget.title,
            style: TextStyle(color: Colors.pink[400], fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 300,
            child: Text(
              widget.subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.grey[600]),
            ),
          ),
          const SizedBox(height: 35),
          StreamifyButton(
            text: "NEXT",
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 142, 75, 171),
          )
        ],
      ),
    );
  }
}

// Color(0xFF03001C),
//                                                 Color(0XFF00214F),
//                                                 Color(0xFF03001C)
