import 'package:flutter/material.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Builder(builder: (c) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showBottomSheet(
                    elevation: 4,
                    backgroundColor: Colors.amber,
                    showDragHandle: true,
                    enableDrag: true,
                    context: c,
                    builder: (c) {
                      return SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Close'),
                        ),
                      );
                    });
              },
              child: const Text('showBottomSheet'),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    barrierLabel: 'Sheet',
                    enableDrag: true,
                    isDismissible: true,
                    // barrierColor: Colors.amber,
                    backgroundColor: Colors.blueAccent.withOpacity(0.5),
                    context: context,
                    builder: (c) {
                      return SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Close',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ));
                    });
              },
              child: const Text('showModalBottomSheet'),
            ),
          ],
        );
      })),
    );
  }
}
