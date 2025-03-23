import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterapp/list_counter.dart';

class TaskVisualizer extends StatelessWidget {
  // We're saying our widget will have this variable, which will be passed to it via react's prop (flutter's constructor) in ListCounterLayout
  final int index;
  const TaskVisualizer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    // We're accessing the state hosted in ListCounterState, this thing's parent
    // This widget is the child of ListCounterState, which is a InheritedWidget that holds the values gotten from ListCounterLayout, which is a stateful widget
    List task = ListCounterState.of(context).task;
    return Container(
      height: 100,
      width: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
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
            textAlign: TextAlign.center,
            // Flutter advises to use this instead of the one below
            task.isNotEmpty ? 'Task $index' : 'loading...',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            task.length != 0 ? task.elementAt(index)['todo'] : 'loading',
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
