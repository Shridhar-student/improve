import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.only(top: 100, left: 10),
        child: Wrap(
          spacing: 2,
          runSpacing: 4,
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
