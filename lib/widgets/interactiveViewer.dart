import 'package:flutter/material.dart';

class InteractiveViewerScreen extends StatelessWidget {
  const InteractiveViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: InteractiveViewer(
            child: Container(
              child: Column(
                children: [
                  Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                        'A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets. A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets. A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets. A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets. A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets. A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets. A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets. A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets. A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets. A Network Image in Flutter is used to load and display an image directly from a URL instead of local assets.'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
