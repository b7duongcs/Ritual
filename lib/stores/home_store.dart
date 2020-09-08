import 'package:mobx/mobx.dart';
import 'package:ritual/home.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  static const List<AppTab> tabs = AppTab.values;

  @observable
  int selectedIndex = tabs.indexOf(AppTab.ROUTINES);

  @computed
  AppTab get selectedTab => tabs[selectedIndex];

  @action
  void selectTab(int index) {
    selectedIndex = index;
  }
}
