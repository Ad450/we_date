import "package:flutter/material.dart";
import "package:we_date/core/widget/textFormField.dart";

class NearbyScreen extends StatefulWidget {
  const NearbyScreen({super.key});

  @override
  State<NearbyScreen> createState() => _NearbyScreenState();
}

class _NearbyScreenState extends State<NearbyScreen> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 8, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.book)),
              WeDateTextFormField(
                controller: _searchController,
                keyboardType: TextInputType.text,
                hintText: "search",
                icon: const Icon(Icons.search),
                showLeadingIcon: true,
                width: 250,
              ),
              const CircleAvatar(
                backgroundColor: Colors.red,
                radius: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
