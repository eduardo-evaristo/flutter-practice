import 'package:flutter/material.dart';
import 'package:flutterapp/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      // Passing data to the next route via 'props
                      builder: (context) => ThirdScreen(text: 'Testing'),
                    ),
                  ),
              child: Row(
                children: [Icon(Icons.forward), Text('Go to third screen')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
