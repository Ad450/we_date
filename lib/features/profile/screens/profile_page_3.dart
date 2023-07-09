import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:we_date/core/utils/constants.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/core/utils/image_urls.dart';
import 'package:we_date/core/widget/app_theme.dart';
import 'package:we_date/core/widget/rounded_interest_container.dart';
import 'package:we_date/core/widget/selectable_religion_container.dart';
import 'package:we_date/core/widget/spacer.dart';
import 'package:we_date/core/widget/we_date_button.dart';

class ProfilePage3 extends StatefulWidget {
  const ProfilePage3({Key? key}) : super(key: key);

  @override
  State<ProfilePage3> createState() => _ProfilePage3State();
}

class _ProfilePage3State extends State<ProfilePage3> {
  String selectedReligion = "";
  String selectedLookingFor = "";
  String selectedLifestyleChoices = "";
  String selectedDrinking = "";
  String selecledWorkout = "";
  Set<String> selectedInterests = {};

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: theme.colorScheme.primary,
                        weight: 10,
                      ),
                    ),
                    Text(
                      "Complete your Profile",
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Steps 3/4",
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            verticalSpace(10),
            LinearPercentIndicator(
              padding: EdgeInsets.zero,
              width: getVisibleScreenWidth(context) - 30,
              lineHeight: 3.0,
              percent: 0.75,
              progressColor: theme.colorScheme.secondary,
            ),
            verticalSpace(25),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select Your Interest",
                style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
            ),
            verticalSpace(10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Require to select minimum of three",
                style: theme.textTheme.titleLarge?.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.withOpacity(0.8),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            verticalSpace(15),
            SizedBox(
              height: 350,
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: interests.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RoundedInterestContainer(
                      imgSrc: interests[index]["image"],
                      isSelected: interests[index]["isSelected"],
                      onSelected: () {
                        setState(() {
                          final isSelected = interests[index]["isSelected"];
                          interests[index]["isSelected"] = !isSelected;
                          if (!isSelected) {
                            selectedInterests.add(interests[index]["text"]);
                          } else {
                            selectedInterests.remove(interests[index]["text"]);
                          }
                        });
                      },
                      text: interests[index]["text"],
                    );
                  }),
            ),
            verticalSpace(150),
            WeDateButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage3()));
              },
              paddingTop: 15,
              paddingBottom: 15,
              buttonStyle: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(theme.colorScheme.primary),
              ),
              child: Text(
                "Save & Continue",
                style: theme.textTheme.titleLarge?.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: theme.colorScheme.background,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
