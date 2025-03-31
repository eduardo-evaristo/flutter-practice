import 'package:flutter/material.dart';
import 'package:flutterapp/center_layout.dart';
import 'package:flutterapp/counter.dart';
import 'package:flutterapp/list.dart';
import 'package:flutterapp/list_counter_layout.dart';
import 'package:flutterapp/screens/home_screen.dart';
import 'package:flutterapp/user_input.dart';
import 'package:flutterapp/vert_hori_layout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // This removes that annoying 'debug' thingy
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green[300]!),
      ),
      home: Scaffold(body: HomeScreen()),
    );
  }
}
