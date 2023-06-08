import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_date/core/utils/image_urls.dart';
import 'package:we_date/core/widget/profile_avatar.dart';
import 'package:we_date/core/widget/social_post_reaction.dart';

class SocialPost extends StatelessWidget {
  const SocialPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 25, 29, 56),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const ListTile(
            leading: ProfileAvatar(),
            trailing: Icon(Icons.more_horiz, color: Colors.white),
            subtitle: Text("1 hour ago", style: TextStyle(color: Colors.grey)),
            title: Text(
              "DillonDarian12",
              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text(
              "Travel is the only thing you buy that makes you richer",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage(ImageURLS.profile),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SocialPostReaction(icon: Icons.view_agenda_sharp),
                  SocialPostReaction(icon: Icons.favorite, color: Color.fromARGB(255, 183, 61, 122)),
                  SocialPostReaction(icon: Icons.comment),
                ],
              )),
        ],
      ),
    );
  }
}
