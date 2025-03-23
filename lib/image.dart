import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});
  final String imageLink =
      'https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
      child: Image(image: NetworkImage(imageLink), width: 60.0),
    );
  }
}
