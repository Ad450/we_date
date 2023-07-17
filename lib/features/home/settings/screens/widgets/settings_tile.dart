import 'package:flutter/material.dart';
import 'package:we_date/core/widget/spacer.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final String title;

  const SettingsTile({
    required this.icon,
    required this.onTap,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.colorScheme.background,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Icon(icon, color: theme.colorScheme.primary),
                  horizontalSpace(15),
                  Text(
                    title,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.black54, size: 15),
            ],
          ),
        ),
      ),
    );
  }
}
