import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterapp/list_counter.dart';

class ListCounterVisualizer extends StatelessWidget {
  const ListCounterVisualizer({super.key});

  @override
  Widget build(BuildContext context) {
    // We're accessing the state hosted in ListCounterState, this thing's parent
    List<int> list = ListCounterState.of(context).list;
    return Container(
      height: 100,
      width: 200,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: <Color>[Colors.deepOrange, Colors.deepPurple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'List:',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            'number ${list.elementAt(Random().nextInt(30))}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
