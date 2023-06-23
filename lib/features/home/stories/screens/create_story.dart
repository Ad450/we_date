import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:we_date/core/widget/profile_avatar.dart';
import 'package:we_date/core/widget/we_date_button.dart';

class CreateStory extends StatefulWidget {
  const CreateStory({Key? key}) : super(key: key);

  @override
  State<CreateStory> createState() => _CreateStoryState();
}

class _CreateStoryState extends State<CreateStory> {
  final _storyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 40, 66),
      body: SafeArea(
          child: Container(
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      ProfileAvatar(),
                      SizedBox(width: 20),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: 43),
                        child: TextField(
                          controller: _storyController,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8),
                              hintText: "Write something...",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              fillColor: Colors.black,
                              border: InputBorder.none),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.grey, thickness: 1.2),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.image_outlined,
                      size: 30,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 183, 61, 122)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("POST",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
// 0598601573 - recap phRM
