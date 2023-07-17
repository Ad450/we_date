// import "package:flutter/material.dart";
// import "package:flutter_bloc/flutter_bloc.dart";
// import "package:flutter_progress_hud/flutter_progress_hud.dart";
// import "package:we_date/core/utils/image_urls.dart";
// import "package:we_date/core/widget/we_date_button.dart";
// import "package:we_date/features/home/home.dart";
// import "package:we_date/features/profile/screens/state/profile_bloc.dart";
// import "package:we_date/features/profile/screens/state/profile_events.dart";
// import "package:we_date/features/profile/screens/state/profile_state.dart";
// import "package:we_date/features/profile/screens/widgets/selectable_container.dart";
//
// class GenderScreen extends StatefulWidget {
//   final String firstName;
//   final String lastName;
//   final String? xfile;
//
//   const GenderScreen({
//     super.key,
//     required this.firstName,
//     required this.lastName,
//     required this.xfile,
//   });
//
//   @override
//   State<GenderScreen> createState() => _GenderScreenState();
// }
//
// class _GenderScreenState extends State<GenderScreen> {
//   var selectedGender = "";
//
//   void _handleUpdateProfile() {
//     if (mounted) {
//       context.read<ProfileBloc>().add(
//             UpdateProfileEvent(
//               gender: selectedGender,
//               firstName: widget.firstName,
//               lastName: widget.lastName,
//               profileImageURL: widget.xfile,
//             ),
//           );
//     }
//   }
//
//   void _showSnackBar(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         action: SnackBarAction(
//           label: 'OKAY',
//           textColor: Colors.yellow,
//           onPressed: ScaffoldMessenger.of(context).removeCurrentSnackBar,
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ProgressHUD(
//         child: SingleChildScrollView(
//           child: Container(
//             width: double.infinity,
//             height: MediaQuery.of(context).size.height,
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage(
//                 ImageURLS.profile,
//               ),
//               fit: BoxFit.cover,
//             )),
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         GestureDetector(
//                           onTap: () => Navigator.pop(context),
//                           child: const Icon(
//                             Icons.arrow_back_ios,
//                             color: Colors.white70,
//                           ),
//                         ),
//                         // const Text(
//                         //   "Skip",
//                         //   style: TextStyle(
//                         //     color: Color.fromARGB(255, 183, 61, 122),
//                         //     fontWeight: FontWeight.bold,
//                         //     fontSize: 18,
//                         //   ),
//                         // ),
//                         const SizedBox(),
//                       ],
//                     ),
//                     const SizedBox(height: 40),
//                     const Text(
//                       "I am a",
//                       style: TextStyle(
//                         color: Colors.white70,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.start,
//                     ),
//                     const SizedBox(height: 40),
//                     GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedGender = "Woman";
//                           });
//                         },
//                         child: SelectableContainer(selectText: "Woman", selected: selectedGender == "Woman")),
//                     const SizedBox(height: 10),
//                     GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedGender = "Man";
//                           });
//                         },
//                         child: SelectableContainer(selectText: "Man", selected: selectedGender == "Man")),
//                     const SizedBox(height: 10),
//                     GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedGender = "Other";
//                           });
//                         },
//                         child: SelectableContainer(selectText: "Other", selected: selectedGender == "Other")),
//                     const SizedBox(height: 180),
//                     BlocListener<ProfileBloc, ProfileState>(
//                       listener: (_, state) {
//                         state.maybeMap(
//                             orElse: () {},
//                             updateProfileLoading: (_) {
//                               final progress = ProgressHUD.of(context);
//                               progress?.showWithText('Loading...');
//                               Future.delayed(const Duration(seconds: 2), () {
//                                 progress?.dismiss();
//                               });
//                             },
//                             updateProfileError: (state) => _showSnackBar(state.message),
//                             updateProfileSuccess: (_) => Navigator.pushAndRemoveUntil(
//                                   context,
//                                   MaterialPageRoute(builder: (context) => const HomeScreen()),
//                                   (route) => false,
//                                 ));
//                       },
//                       // child: WeDateButton(
//                       //   text: "Continue",
//                       //   textFontSize: 20,
//                       //   textColor: Colors.white,
//                       //   backgroundColor: const Color.fromARGB(255, 183, 61, 122),
//                       //   leading: null,
//                       //   onPressed: () {
//                       //     if (selectedGender.isNotEmpty) {
//                       //       _handleUpdateProfile();
//                       //     }
//                       //   },
//                       // ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
