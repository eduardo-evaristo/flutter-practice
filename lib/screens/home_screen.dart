import 'package:flutter/material.dart';
import 'package:flutterapp/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed:
                () => Navigator.push(
                  context,
                  // Manually creating the routes we want to go to, we use the class, which receives a builder, so it needs context, at the end it simply returns an instance of the screen
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                ),
            child: Text('Go to second screen'),
          ),
        ],
      ),
    );
  }
}
