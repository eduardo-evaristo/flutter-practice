import 'package:flutter/material.dart';
import 'package:flutterapp/image.dart';

class VertHoriLayout extends StatelessWidget {
  const VertHoriLayout({super.key});

  @override
  Widget build(BuildContext context) {
    //Row's main axis is X and cross is Y, Column is the opposite
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            MyImage(), //Expanded widgets rely on the parent's MAIN axis
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Flutter'),
            ),
          ],
        ),
        Column(
          children: [
            MyImage(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Flutter'),
            ),
          ],
        ),
        Column(
          children: [
            MyImage(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Flutter'),
            ),
          ],
        ),
      ],
    );
  }
}
