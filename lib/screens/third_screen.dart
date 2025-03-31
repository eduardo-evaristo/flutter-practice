import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home_screen.dart';

class ThirdScreen extends StatelessWidget {
  final String text;
  const ThirdScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // pop pops the the current route and gets to the previous oen in the route stack
              onPressed: () => Navigator.pop(context),
              child: Row(children: [Icon(Icons.keyboard_return), Text(text)]),
            ),
            ElevatedButton(
              //popUntil pops until the predicate si true, which receives a route, which is an object that we can use for some stuff, such as checking whether the route we've popped to is the firt in the stack
              // This works differently with named routes!
              onPressed:
                  () => Navigator.popUntil(context, (route) => route.isFirst),
              child: Row(
                children: [Icon(Icons.keyboard_return), Text('Go to home')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
