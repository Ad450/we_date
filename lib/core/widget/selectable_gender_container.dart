import 'package:flutter/material.dart';

class SelectableGenderContainer extends StatefulWidget {
  final double width;
  final double height;
  final bool? hasLeading;
  final IconData? leadingIcon;
  final String text;
  final VoidCallback onSelect;
  final bool isSelected;

  const SelectableGenderContainer({
    required this.width,
    required this.height,
    required this.text,
    required this.onSelect,
    this.hasLeading,
    this.leadingIcon,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  State<SelectableGenderContainer> createState() => _SelectableGenderContainerState();
}

class _SelectableGenderContainerState extends State<SelectableGenderContainer> {
  // void _onSelected() {
  //   setState(() {
  //     _isSelected = !_isSelected;
  //   });
  // }

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
        child: Row(children: <Widget>[
          if (widget.hasLeading != null && widget.hasLeading!)
            Icon(
              widget.leadingIcon,
              color: widget.isSelected ? theme.colorScheme.primary : theme.colorScheme.surface,
            ),
          Text(
            widget.text,
            style: theme.textTheme.bodySmall?.copyWith(
              color: widget.isSelected ? theme.colorScheme.primary : theme.colorScheme.surface,
              fontWeight: FontWeight.w600,
            ),
          )
        ]),
      ),
    );
  }
}
