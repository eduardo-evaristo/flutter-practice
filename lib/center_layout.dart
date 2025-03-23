import 'package:flutter/material.dart';
import 'package:flutterapp/image.dart';

class CenterLayout extends StatelessWidget {
  const CenterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // Images receive stuff that inherit ImageProvider, NetworkImage is oen of them
    //return Center(child: Image(image: NetworkImage(imageLink)));

    return Center(
      // Containers give us control over sizing, margins, paddings etc, therefore, we're building more complex layouts
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        padding: EdgeInsets.all(24.0),
        child: MyImage(),
      ),
    );
  }
}
