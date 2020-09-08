import 'package:flutter/material.dart';
import 'package:ritual/home.dart';
import 'package:ritual/stores/home_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ritual',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(HomeStore()),
    );
  }
}
