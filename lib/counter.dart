import 'package:flutter/material.dart';
import 'package:flutterapp/counter_visualizer.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:
                      (context, index) =>
                          CounterVisualizer(count: _count, countIndex: index),
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.all(20)),
              onPressed: _increment,
              child: Text(
                'Increment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
