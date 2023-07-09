import 'package:flutter/material.dart';

class RoundedInterestContainer extends StatefulWidget {
  final String imgSrc;
  final bool isSelected;
  final VoidCallback onSelected;
  final String text;

  const RoundedInterestContainer({
    required this.imgSrc,
    required this.isSelected,
    required this.onSelected,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  State<RoundedInterestContainer> createState() => _RoundedInterestContainerState();
}

class _RoundedInterestContainerState extends State<RoundedInterestContainer> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        widget.onSelected();
      },
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.imgSrc), fit: BoxFit.cover),
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              child: widget.isSelected
                  ? Container(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.check,
                        color: theme.colorScheme.background,
                        size: 40,
                      ),
                    )
                  : Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                    ),
            ),
          ),
          Text(
            widget.text,
            style: theme.textTheme.titleLarge?.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.grey.withOpacity(0.8),
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
