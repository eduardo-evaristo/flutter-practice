import 'package:flutter/material.dart';
import 'package:flutterapp/image.dart';

class MyList extends StatelessWidget {
  // Cannot keep const here if if initialize itemsList, gotta look into the reason
  // const needs all fields/members to be initialized at compile-time, my list, however, will be created at runtime, that's why
  MyList({super.key});

  // List.generate needs the generator func to take in an index
  // This needs to be static to be used as the generator in line 18
  // static Widget myImageGenerator(i) {
  //   if (i == 1) {
  //     // i dont think Expanded works here inside ListViews
  //     return Expanded(flex: 0, child: MyImage());
  //   }
  //   return MyImage();
  // }

  // List<Widget> itemsList = List.generate(100, myImageGenerator);
  // This may be final cuz it's determined at runtime and won't ever change
  final List<Widget> itemsList = List.generate(100, (i) => MyImage());

  @override
  Widget build(BuildContext context) {
    // return ListView(children: List.generate(10, myImageGenerator));

    // The builder constructor builds the items only when they're visible
    // The builder needs a builder function, which is the one that returns the Widgets to be put inside children and an itemCount, not to generate infinite items (unless that's the goal)
    return ListView.builder(
      itemBuilder: (context, index) => itemsList.elementAt(index),
      itemCount: itemsList.length,
    );

    // All items are built from the get-go
    // return ListView(children: itemsList);
  }
}
