import 'package:flutter/material.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: IconButton(
          onPressed: () {},
          icon: Badge.count(
            count: 100,
            child: const Icon(Icons.chat_outlined),
          )),
    ));
  }
}
