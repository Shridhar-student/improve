import 'package:flutter/material.dart';
import 'package:improve/screens/heroNavScreen.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (ctx) => const HeroNavScreen()));
        },
        child: const Hero(
          tag: 'hero',
          child: Icon(
            Icons.image,
            color: Colors.blue,
            size: 60,
          ),
        ),
      ),
    ));
  }
}
