import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/core/utils/image_urls.dart';
import 'package:we_date/core/widget/app_theme.dart';
import 'package:we_date/core/widget/app_title.dart';
import 'package:we_date/core/widget/spacer.dart';
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
  late SimpleFontelicoProgressDialog _dialog;

  @override
  void initState() {
    super.initState();
    _dialog = SimpleFontelicoProgressDialog(context: context);
  }

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
    final theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageURLS.login_image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.45),
          Expanded(
            child: Material(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              elevation: 20,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    children: <Widget>[
                      verticalSpace(25),
                      const AppTitle(),
                      verticalSpace(25),
                      _buildContinueWithFacebookButton(theme),
                      verticalSpace(10),
                      _buildContinueWithGoogleButton(context, theme, _handleContinueWithGoogle, dialog: _dialog),
                      verticalSpace(25),
                      Text(
                        "Or",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge?.copyWith(color: continueWithGoogle),
                      ),
                      verticalSpace(25),
                      _buildContinueWithPhoneButton(theme),
                      verticalSpace(20),
                      _buildTermsText(theme)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  RichText _buildTermsText(ThemeData theme) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By signing up you are agreeing to our \n",
            style: TextStyle(
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          TextSpan(
            text: "Terms of Use ",
            style: theme.textTheme.labelLarge?.copyWith(
              color: googleTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: "and ",
            style: TextStyle(
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
          TextSpan(
            text: "Privacy Policy",
            style: theme.textTheme.labelLarge?.copyWith(
              color: googleTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  WeDateButton _buildContinueWithPhoneButton(ThemeData theme) {
    return WeDateButton(
      onPressed: () {},
      paddingTop: 10,
      paddingBottom: 10,
      buttonStyle: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(theme.colorScheme.primary),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.phone_android, color: theme.colorScheme.background),
          horizontalSpace(12),
          RichText(
            text: TextSpan(
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.background,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Continue with ",
                  style: theme.textTheme.labelLarge?.copyWith(color: continueWithColor),
                ),
                TextSpan(
                  text: "Mobile No.",
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: theme.colorScheme.background,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContinueWithGoogleButton(
    BuildContext context,
    ThemeData theme,
    VoidCallback handleContinueWithGoogle, {
    required SimpleFontelicoProgressDialog dialog,
  }) {
    return BlocListener<AuthenticationBloc, AuthState>(
      listener: (_, state) {
        if (state is AuthStateLoading) {
          if (mounted) {
            dialog.show(message: "");
          }
        } else if (state is AuthSuccessState) {
          if (mounted) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => const ProfilePage1()),
              (route) => false,
            );
          }
        } else if (state is AuthErrorState) {
          showToast(state.error);
        } else {
          //showToast("something bad happened");
        }
      },
      child: WeDateButton(
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage1()));
          handleContinueWithGoogle();
        },
        paddingTop: 10,
        paddingBottom: 10,
        buttonStyle: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(theme.colorScheme.background),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(ImageURLS.google_logo),
            ),
            horizontalSpace(12),
            RichText(
              text: TextSpan(
                style: theme.textTheme.labelLarge?.copyWith(
                  color: theme.colorScheme.background,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Continue with ",
                    style: theme.textTheme.labelLarge?.copyWith(color: continueWithGoogle),
                  ),
                  TextSpan(
                    text: "Google",
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: googleTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  WeDateButton _buildContinueWithFacebookButton(ThemeData theme) {
    return WeDateButton(
      onPressed: () {
        showToast("Facebook authentication not yet in. Use Google");
      },
      paddingTop: 10,
      paddingBottom: 10,
      buttonStyle: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(facebookButtonBackground),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.facebook,
            color: theme.colorScheme.background,
          ),
          horizontalSpace(20),
          RichText(
            text: TextSpan(
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.background,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Continue with ",
                  style: theme.textTheme.labelLarge?.copyWith(color: continueWithColor),
                ),
                TextSpan(
                  text: "Facebook",
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.background,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
