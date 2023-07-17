import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/core/widget/app_theme.dart';
import 'package:we_date/core/widget/selectable_religion_container.dart';
import 'package:we_date/core/widget/spacer.dart';
import 'package:we_date/core/widget/we_date_button.dart';
import 'package:we_date/features/profile/screens/profile_page_3.dart';

class ProfilePage2 extends StatefulWidget {
  final String selectedGender;
  final String selectedInterest;
  final String selectedBodyType;
  final String selectedHeightUnit;
  final String username;
  final double heightValue;
  final String? profileImagePath;

  const ProfilePage2(
      {required this.selectedHeightUnit,
      required this.selectedBodyType,
      required this.selectedGender,
      required this.selectedInterest,
      required this.username,
      required this.heightValue,
      required this.profileImagePath,
      Key? key})
      : super(key: key);

  @override
  State<ProfilePage2> createState() => _ProfilePage2State();
}

class _ProfilePage2State extends State<ProfilePage2> {
  String selectedReligion = "";
  String selectedLookingFor = "";
  String selectedLifestyleChoices = "";
  String selectedDrinking = "";
  String selectedWorkout = "";

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildProfileHeader(context, theme),
                verticalSpace(10),
                LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  width: getVisibleScreenWidth(context) - 30,
                  lineHeight: 3.0,
                  percent: 0.5,
                  progressColor: theme.colorScheme.secondary,
                ),
                verticalSpace(25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Religion",
                    style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                ),
                verticalSpace(8),
                _buildProfileForm(theme),
                verticalSpace(100),
                WeDateButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfilePage3(
                          selectedReligion: selectedReligion,
                          selectedLookingFor: selectedLookingFor,
                          selectedLifestyleChoices: selectedLifestyleChoices,
                          selectedDrinking: selectedDrinking,
                          selectedWorkout: selectedWorkout,
                          selectedGender: widget.selectedGender,
                          selectedInterest: widget.selectedInterest,
                          selectedBodyType: widget.selectedBodyType,
                          selectedHeightUnit: widget.selectedHeightUnit,
                          username: widget.username,
                          heightValue: widget.heightValue,
                          profileImagePath: widget.profileImagePath,
                        ),
                      ),
                    );
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
        ),
      ),
    );
  }

  Row _buildProfileHeader(BuildContext context, ThemeData theme) {
    return Row(
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
          "Steps 2/4",
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  Widget _buildProfileForm(ThemeData theme) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SelectableReligionContainer(
              text: "Christian",
              width: 110,
              height: 40,
              onSelect: () {
                setState(() {
                  selectedReligion = "Christian";
                });
              },
              isSelected: selectedReligion == "Christian",
            ),
            SelectableReligionContainer(
              text: "Muslim",
              width: 110,
              height: 40,
              onSelect: () {
                setState(() {
                  selectedReligion = "Muslim";
                });
              },
              isSelected: selectedReligion == "Muslim",
            ),
            SelectableReligionContainer(
              text: "Others",
              width: 110,
              height: 40,
              onSelect: () {
                setState(() {
                  selectedReligion = "Others";
                });
              },
              isSelected: selectedReligion == "Others",
            ),
          ],
        ),
        verticalSpace(30),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "What are you looking for",
            style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpace(8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              SelectableReligionContainer(
                text: "Relationship",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedLookingFor = "Relationship";
                  });
                },
                isSelected: selectedLookingFor == "Relationship",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Dating",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedLookingFor = "Dating";
                  });
                },
                isSelected: selectedLookingFor == "Dating",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Casual",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedLookingFor = "Casual";
                  });
                },
                isSelected: selectedLookingFor == "Casual",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Others",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedLookingFor = "Others";
                  });
                },
                isSelected: selectedLookingFor == "Others",
              ),
            ],
          ),
        ),
        verticalSpace(30),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Lifestyle Choices",
            style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpace(8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              SelectableReligionContainer(
                text: "Smoker",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedLifestyleChoices = "Smoker";
                  });
                },
                isSelected: selectedLifestyleChoices == "Smoker",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Non Smoker",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedLifestyleChoices = "Non Smoker";
                  });
                },
                isSelected: selectedLifestyleChoices == "Non Smoker",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Trying to quit",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedLifestyleChoices = "Trying to quit";
                  });
                },
                isSelected: selectedLifestyleChoices == "Trying to quit",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Others",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedLifestyleChoices = "Others";
                  });
                },
                isSelected: selectedLifestyleChoices == "Others",
              ),
            ],
          ),
        ),
        verticalSpace(30),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Drinking",
            style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpace(8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              SelectableReligionContainer(
                text: "Non Drinker",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedDrinking = "Non Drinker";
                  });
                },
                isSelected: selectedDrinking == "Non Drinker",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Social Drinker",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedDrinking = "Social Drinker";
                  });
                },
                isSelected: selectedDrinking == "Social Drinker",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Drinks Frequently",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedDrinking = "Drinks Frequently";
                  });
                },
                isSelected: selectedDrinking == "Drinks Frequently",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Drinks Seldomly",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedDrinking = "Drinks Seldomly";
                  });
                },
                isSelected: selectedDrinking == "Drinks Seldomly",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Others",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedDrinking = "Others";
                  });
                },
                isSelected: selectedDrinking == "Others",
              ),
            ],
          ),
        ),
        verticalSpace(30),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Workout",
            style: theme.textTheme.titleLarge?.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
            textAlign: TextAlign.start,
          ),
        ),
        verticalSpace(8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              SelectableReligionContainer(
                text: "Gym Rat",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedWorkout = "Gym Rat";
                  });
                },
                isSelected: selectedWorkout == "Gym Rat",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Active",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedWorkout = "Active";
                  });
                },
                isSelected: selectedWorkout == "Active",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Moderately Active",
                width: 110,
                height: 40,
                onSelect: () {
                  setState(() {
                    selectedWorkout = "Moderately Active";
                  });
                },
                isSelected: selectedWorkout == "Moderately Active",
              ),
              horizontalSpace(10),
              SelectableReligionContainer(
                text: "Others",
                width: 110,
                height: 50,
                onSelect: () {
                  setState(() {
                    selectedWorkout = "Others";
                  });
                },
                isSelected: selectedWorkout == "Others",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
