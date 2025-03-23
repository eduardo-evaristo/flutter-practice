import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterapp/list_counter.dart';
import 'package:flutterapp/list_counter_visualizer.dart';
import 'package:flutterapp/task_visualizer.dart';
import 'package:http/http.dart' as http;

class ListCounterLayout extends StatefulWidget {
  const ListCounterLayout({super.key});

  @override
  State<ListCounterLayout> createState() => _ListCounterLayoutState();
}

class _ListCounterLayoutState extends State<ListCounterLayout> {
  List<int> _list = List.generate(30, (i) => Random().nextInt(i + 1));

  List _tasks = [];

  void _changeList() {
    setState(() {
      _list = List.generate(30, (i) => Random().nextInt(i + 1));
    });
  }

  void _fetchTodos() async {
    final http.Response response = await http.get(
      Uri.parse('https://dummyjson.com/todos'),
    );
    final tasks = json.decode(response.body);
    // tasks is a map that has 4 items, one being todos, which is a list with 30 items, which are maps, each has a todo key, with the value we need
    print(tasks['todos']);

    setState(() {
      _tasks = tasks['todos'];
    });
    print(_tasks);
  }

  @override
  void initState() {
    // TODO: implement initState
    _fetchTodos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListCounterState(
      list: _list,
      task: _tasks,
      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // itemBuilder: (context, index) => ListCounterVisualizer(),
                      itemBuilder:
                          (context, index) => TaskVisualizer(index: index),
                      itemCount: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(onPressed: _changeList, icon: Icon(Icons.blur_on)),
        ],
      ),
    );
  }
}
