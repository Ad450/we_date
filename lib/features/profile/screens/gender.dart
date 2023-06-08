import "package:flutter/material.dart";
import "package:we_date/core/utils/functions.dart";
import "package:we_date/core/utils/image_urls.dart";
import "package:we_date/core/widget/we_date_button.dart";
import "package:we_date/features/home/home.dart";
import "package:we_date/features/profile/widgets/selectable_container.dart";

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  var selectedGender = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            ImageURLS.profile,
          ),
          fit: BoxFit.cover,
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white70,
                      ),
                    ),
                    const Text(
                      "Skip",
                      style: TextStyle(
                        color: Color.fromARGB(255, 183, 61, 122),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  "I am a",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 40),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = "Woman";
                      });
                    },
                    child: SelectableContainer(selectText: "Woman", selected: selectedGender == "Woman")),
                const SizedBox(height: 10),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = "Man";
                      });
                    },
                    child: SelectableContainer(selectText: "Man", selected: selectedGender == "Man")),
                const SizedBox(height: 10),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = "Other";
                      });
                    },
                    child: SelectableContainer(selectText: "Other", selected: selectedGender == "Other")),
                const SizedBox(height: 180),
                WeDateButton(
                  text: "Continue",
                  textFontSize: 20,
                  textColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 183, 61, 122),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
