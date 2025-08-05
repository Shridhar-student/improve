import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //flex is calculated based on given flex-ex 2,4,6, total 2+4+6=12, per container-> 12/2, 12/4, 12/6,
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 500,
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.amber,
                    child: const Center(
                        child: Text(
                      '4',
                      style: TextStyle(fontSize: 50),
                    )),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                    child: const Center(
                        child: Text(
                      '2',
                      style: TextStyle(fontSize: 50, color: Colors.orange),
                    )),
                  )),
              Expanded(
                  child: Container(
                color: Colors.pink,
                child: const Center(
                    child: Text(
                  'Free',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
