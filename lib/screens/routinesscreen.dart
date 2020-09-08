import 'package:flutter/material.dart';

class Routine {
  String routineName;
  List<int> daysOfWeek;
  TimeOfDay time;

  Routine(this.routineName, this.daysOfWeek, this.time);
}

class RoutinesScreen extends StatelessWidget {
  final List<Routine> routines;

  //requiring the list of todos
  RoutinesScreen({Key key, @required this.routines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routines'),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
        itemCount: routines.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(routines[index].routineName));
        },
      ),
    );
  }
}
