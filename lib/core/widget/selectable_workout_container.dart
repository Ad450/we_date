import 'package:flutter/material.dart';

class SelectableWorkoutContainer extends StatefulWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onSelect;
  final bool isSelected;

  const SelectableWorkoutContainer({
    required this.width,
    required this.height,
    required this.text,
    required this.onSelect,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  State<SelectableWorkoutContainer> createState() => _SelectableWorkoutContainerState();
}

class _SelectableWorkoutContainerState extends State<SelectableWorkoutContainer> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
        onTap: widget.onSelect,
        child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: widget.isSelected ? theme.colorScheme.primary : theme.colorScheme.onSurface,
                width: 1.5,
              ),
              color: widget.isSelected ? theme.colorScheme.background : theme.colorScheme.onSurface,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                widget.text,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: widget.isSelected ? theme.colorScheme.primary : theme.colorScheme.surface,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )));
  }
}
