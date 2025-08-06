import 'package:flutter/material.dart';

class ClifOvelScreen extends StatelessWidget {
  const ClifOvelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ClipOval(
            child: FittedBox(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: const Icon(Icons.person),
              ),
            ),
          ),
        ));
  }
}
