import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_date/core/utils/image_urls.dart';
import 'package:we_date/core/widget/we_date_button.dart';
import 'package:we_date/features/auth/state/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/features/auth/state/auth_events.dart';
import 'package:we_date/features/auth/state/auth_state.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:we_date/features/profile/screens/profile.dart';

class AuthLandingPage extends StatefulWidget {
  const AuthLandingPage({super.key});

  @override
  State<AuthLandingPage> createState() => _AuthLandingPageState();
}

class _AuthLandingPageState extends State<AuthLandingPage> {
  void _handleContinueWithGoogle() async {
    context.read<AuthenticationBloc>().add(SignupWithGoogleEvent());
  }

  void _handleContinueWithFacebook() async {
    context.read<AuthenticationBloc>().add(SignupWithFacebookEvent());
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
          label: 'OKAY',
          textColor: Colors.yellow,
          onPressed: ScaffoldMessenger.of(context).removeCurrentSnackBar,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProgressHUD(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    ImageURLS.authLandingPage,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.48,
                    right: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 300,
                          child: Text(
                            "Find new \nfriends nearby",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "With millions of users all over the world, we \ngive you the ability to connect with people \nno matter where you are",
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Builder(builder: (context) {
                          return BlocConsumer<AuthenticationBloc, AuthState>(listener: (_, state) {
                            state.maybeMap(
                                orElse: () {},
                                authenticated: (_) {
                                  if (mounted) {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(builder: (_) => const Profile()),
                                      (route) => false,
                                    );
                                  }
                                },
                                loading: (_) {
                                  final progress = ProgressHUD.of(context);
                                  progress?.showWithText('Loading...');
                                  Future.delayed(const Duration(seconds: 2), () {
                                    progress?.dismiss();
                                  });
                                },
                                error: (state) => _showSnackBar(state.payload.error!));
                          }, builder: (_, state) {
                            return state.maybeMap(
                              orElse: () => Column(
                                children: [
                                  WeDateButton(
                                    text: "Continue with Google",
                                    textFontSize: 20,
                                    textColor: const Color.fromARGB(255, 183, 61, 122),
                                    backgroundColor: Colors.white,
                                    onPressed: () {
                                      _handleContinueWithGoogle();
                                    },
                                  ),
                                  const SizedBox(height: 5),
                                  WeDateButton(
                                    text: "Continue with Facebook",
                                    textFontSize: 20,
                                    textColor: Colors.white,
                                    backgroundColor: const Color.fromARGB(255, 183, 61, 122),
                                    onPressed: () {
                                      _handleContinueWithFacebook();
                                    },
                                  ),
                                ],
                              ),
                            );
                          });
                        }),
                        const SizedBox(height: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
                            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                              IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.google)),
                              IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.facebook))
                            ]),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
