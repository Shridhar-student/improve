import 'package:flutter/material.dart';
import 'package:improve/widgets/badge.dart';
import 'package:improve/widgets/expanded.dart';
import 'package:improve/widgets/flexible.dart';
import 'package:improve/widgets/hero.dart';
import 'package:improve/widgets/interactiveViewer.dart';
import 'package:improve/widgets/l_ProgressInd.dart';

class UiListScreen extends StatelessWidget {
  UiListScreen({super.key});
  final screens = [
    'Badge',
    'LProgressIndicator',
    'Hero',
    'InteractiveViewer',
    'Flexible',
    'Expanded'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
      child: ListView.builder(
          itemCount: screens.length,
          itemBuilder: (ctx, index) {
            final screen = screens[index];
            return InkWell(
              onTap: () {
                if (screen == 'Badge') {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return BadgeScreen();
                  }));
                }
                if (screen == 'LProgressIndicator') {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return LProgressInd();
                  }));
                }
                if (screen == 'Hero') {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return HeroScreen();
                  }));
                }
                if (screen == 'InteractiveViewer') {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return const InteractiveViewerScreen();
                  }));
                }
                if (screen == 'Flexible') {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return const FlexibleScreen();
                  }));
                }
                if (screen == 'Expanded') {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return const ExpandedScreen();
                  }));
                }
              },
              child: Card(
                  margin: const EdgeInsets.only(top: 20),
                  elevation: 2,
                  color: Colors.blueAccent.withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      screen,
                      style: const TextStyle(color: Colors.white),
                    ),
                  )),
            );
          }),
    ));
  }
}
