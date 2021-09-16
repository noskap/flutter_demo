import 'package:rxdart/rxdart.dart';

import '../bottom-bar-states.dart';

class BottomNavigationBarService {
  // TODO redo this using riverpod
  static final BottomNavigationBarService _singleton = BottomNavigationBarService._internal();

  factory BottomNavigationBarService() {

    return _singleton;
  }

  BottomNavigationBarService._internal();

  // Which widget to show on BottomNavBar

  BehaviorSubject<bool> bottomNavBarSubject = BehaviorSubject();

  ValueStream<bool> get stream => bottomNavBarSubject.stream;

  changeState(States state) {
    bottomNavBarSubject.add(BottomBarStates(state) ?? false);
  }

  // Bottom Tabs on Shopping screen

  BehaviorSubject<int> selectedTabSubject = BehaviorSubject.seeded(0);

  ValueStream<int> get selectedTabStream => selectedTabSubject.stream;

  changeTab(int tabNumber) {
    selectedTabSubject.add(tabNumber);
  }
}
