import 'package:flutter/material.dart';

class HeroNavScreen extends StatefulWidget {
  const HeroNavScreen({super.key});

  @override
  State<HeroNavScreen> createState() => _HeroNavScreenState();
}

class _HeroNavScreenState extends State<HeroNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
              tag: 'hero',
              child: InteractiveViewer(
                child: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
            ),
          ],
        ));
  }
}
