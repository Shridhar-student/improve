import 'package:flutter/material.dart';

class MaterialbannerScreen extends StatefulWidget {
  const MaterialbannerScreen({super.key});

  @override
  State<MaterialbannerScreen> createState() => _MaterialbannerScreenState();
}

class _MaterialbannerScreenState extends State<MaterialbannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).clearMaterialBanners();
            ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                padding: const EdgeInsets.all(20),
                surfaceTintColor: Colors.red,
                forceActionsBelow: true,
                dividerColor: Colors.black12,
                backgroundColor: Colors.amber.withOpacity(0.3),
                leading: const Icon(
                  Icons.notification_add_outlined,
                  color: Colors.green,
                ),
                elevation: 4,
                content: const Text(
                  'Material Banner',
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).clearMaterialBanners();
                      },
                      child: const Text('Allow',
                          style: TextStyle(color: Colors.blue))),
                  TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).clearMaterialBanners();
                      },
                      child: const Text('Dismiss'))
                ]));
          },
          child: const Text('Click'),
        ),
      ),
    );
  }
}
