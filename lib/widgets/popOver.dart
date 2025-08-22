import 'dart:async';

import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class PopoverExample extends StatefulWidget {
  const PopoverExample({super.key});

  @override
  State<PopoverExample> createState() => _PopoverExampleState();
}

class _PopoverExampleState extends State<PopoverExample> {
  bool isOpened = false;
  Timer? _closeTimer;
  void _showTimedPopover(
      BuildContext context, int closeAfterTimeInSec, bool? autoClose) {
    _closeTimer?.cancel();
    if (isOpened) {
      Navigator.of(context, rootNavigator: true).pop();
    }

    setState(() {
      isOpened = true;
    });

    showPopover(
      backgroundColor: Colors.blueAccent,
      context: context,
      bodyBuilder: (context) => const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Kondapur,hyderarabad,',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'telangan,india 545123',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      direction: PopoverDirection.bottom,
      barrierColor: Colors.transparent,
      arrowHeight: 10,
      arrowDyOffset: -8,
      arrowWidth: 20,
      onPop: () {
        setState(() {
          isOpened = false;
        });
        _closeTimer?.cancel();
      },
    );

    if (autoClose == true) {
      _closeTimer = Timer(Duration(seconds: closeAfterTimeInSec), () {
        if (mounted && isOpened) {
          Navigator.of(context, rootNavigator: true).maybePop();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen with Popover")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: const Icon(Icons.event),
            title: Text("Event ${index + 1}"),
            subtitle: const Text("Tap the icon to show popup"),
            trailing: Builder(
              builder: (tileContext) {
                return IconButton(
                  icon: const Icon(Icons.location_on, color: Colors.red),
                  onPressed: () => _showTimedPopover(tileContext, 6, true),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
