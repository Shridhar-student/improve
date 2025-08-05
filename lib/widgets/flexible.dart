import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //flex is calculated based on given flex-ex 2,4,6, total 2+4+6=12, per container-> 12/2, 12/4, 12/6,

    return Scaffold(
      body: Column(
        children: [
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.amber,
                child: const Center(
                    child: Text(
                  '2',
                  style: TextStyle(fontSize: 50),
                )),
              )),
          Flexible(
              flex: 4,
              child: Container(
                color: Colors.blue,
                child: const Center(
                    child: Text(
                  '4',
                  style: TextStyle(fontSize: 50, color: Colors.orange),
                )),
              )),
          Flexible(
              flex: 8,
              child: Container(
                color: Colors.pink,
                child: const Center(
                    child: Text(
                  '8',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              )),
        ],
      ),
    );
  }
}
