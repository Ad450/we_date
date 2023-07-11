import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotificationWidget extends StatelessWidget {
  const CustomNotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      // height: 50,
      // width: 50,
      child: Stack(
        children: <Widget>[
          FaIcon(
            FontAwesomeIcons.solidBell,
            color: theme.colorScheme.primary,
            size: 30,
          ),
          Positioned(
            top: 5,
            right: 5,
            child: CircleAvatar(backgroundColor: Colors.green[600], radius: 4),
          )
        ],
      ),
    );
  }
}
