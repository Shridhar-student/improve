import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Wrap(
          children: [
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
            SizedBox(
              width: 10,
            ),
            Chip(label: Text('ONE')),
          ],
        ),
      ),
    );
  }
}
