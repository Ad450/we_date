import "package:flutter/material.dart";

class SelectableContainer extends StatelessWidget {
  final String selectText;
  final bool selected;

  const SelectableContainer({
    super.key,
    required this.selectText,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            selected ? const Color.fromARGB(255, 183, 61, 122) : Colors.white.withOpacity(0.5),
            Colors.white.withOpacity(0.2)
          ],
          stops: const [0.0, 1.0],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              selectText,
              style: const TextStyle(color: Colors.white70, fontSize: 18),
            ),
            CircleAvatar(
              backgroundColor: selected ? Colors.green : Colors.grey,
              radius: 12,
              child: const Icon(
                Icons.check_rounded,
                color: Colors.white70,
                size: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
