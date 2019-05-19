import 'package:flutter/material.dart';
import 'todoScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: TodoScreen(),
    );
  }
}

