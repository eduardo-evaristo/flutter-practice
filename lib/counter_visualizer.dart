import 'package:flutter/material.dart';

class CounterVisualizer extends StatelessWidget {
  final int count;
  final int countIndex;

  // Passing state via constructor is roughly speaking, Flutter's version of React's prop drilling
  const CounterVisualizer({
    super.key,
    required this.count,
    required this.countIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white70, width: 1),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xff1f005c),
            Color(0xff5b0060),
            Color(0xff870160),
            Color(0xffac255e),
            Color(0xffca485c),
            Color(0xffe16b5c),
            Color(0xfff39060),
            Color(0xffffb56b),
          ],
        ),

        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$count',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Counter ${countIndex + 1}',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
