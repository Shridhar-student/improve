import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LProgressInd extends StatelessWidget {
  LProgressInd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: LinearProgressIndicator(
            minHeight: 2.5,
            backgroundColor: Colors.grey,
            value: 0.4,
            color: Colors.amberAccent,
          )),
          const SizedBox(
            height: 50,
          ),
          const Center(
              child: LinearProgressIndicator(
            minHeight: 2.5,
            color: Colors.blue,
          )),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.55),
                  borderRadius: BorderRadius.circular(20)),
              height: 100,
              child: const Column(
                children: [
                  Text('Getting Your Data'),
                  SizedBox(
                    height: 50,
                  ),
                  LinearProgressIndicator(
                    minHeight: 10,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
