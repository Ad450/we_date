import 'package:flutter/material.dart';

class HeightSlider extends StatefulWidget {
  final double value;
  final Function(double value) onChange;
  final bool isCm;

  const HeightSlider({required this.value, required this.onChange, this.isCm = false, Key? key}) : super(key: key);

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Slider(
      value: widget.value,
      onChanged: widget.onChange,
      min: widget.isCm ? 31.0 : 1.0,
      max: widget.isCm ? 305.0 : 10.0,
      activeColor: theme.colorScheme.primary,
    );
  }
}
