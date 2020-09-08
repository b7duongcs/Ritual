import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ritual/stores/home_store.dart';
import 'package:ritual/screens/routinesscreen.dart';
import 'package:ritual/screens/statsscreen.dart';
import 'package:ritual/screens/profilescreen.dart';

final routines = List<Routine>.generate(
  5,
  (i) =>
      Routine('Routine $i', List<int>.generate(6, (i) => i), TimeOfDay.now()),
);

class Home extends StatelessWidget {
  static Map<AppTab, Widget> _tabOptions = {
    AppTab.ROUTINES: RoutinesScreen(routines: routines),
    AppTab.STATS: StatsScreen(),
    AppTab.PROFILE: ProfileScreen()
  };
  final HomeStore homeStore;
  Home(this.homeStore);
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        body: Center(child: _tabOptions[homeStore.selectedTab]),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.timer), title: Text("Routines")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assessment), title: Text("Stats")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Profile")),
            ],
            currentIndex: homeStore.selectedIndex,
            onTap: (value) => homeStore.selectTab(value)),
      );
    });
  }
}

enum AppTab { ROUTINES, STATS, PROFILE }
