import 'package:flutter/material.dart';

class DateOfBirthPicker extends StatelessWidget {
  const DateOfBirthPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 180,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: theme.colorScheme.onSurface,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "DOB",
              style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.surface),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.calendar_month, color: theme.colorScheme.surface, size: 15),
            )
          ],
        ),
      ),
    );
  }
}
