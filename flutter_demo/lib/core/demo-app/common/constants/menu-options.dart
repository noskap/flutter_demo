import 'package:flutter/material.dart';
import 'package:flutter_demo/core/demo-app/common/services/bottom-navigation-bar.service.dart';
import 'package:flutter_demo/core/demo-app/common/services/page.service.dart';
import 'package:flutter_demo/core/demo-app/home.dart';
import 'package:flutter_demo/core/demo-app/screens/notifications.screen.dart';
import 'package:flutter_demo/core/demo-app/screens/store/store.dart';
// TODO localization

class DemoRoutes {
  static const String demo = 'demo';
  static const String shop = 'shop';
  static const String notifications = 'notifications';
  static const String settings = 'settings';
}

final Map<String, Widget> DemoAppRoutes = <String, Widget>{
  DemoRoutes.demo: DemoHome(),
  DemoRoutes.shop: Store(),
  DemoRoutes.notifications: NotificationsScreen(),
  DemoRoutes.settings: Text(DemoRoutes.settings),
};

class MenuItem {
  final String name;
  final Icon icon;
  final void Function() Function(BuildContext) action;

  MenuItem({required this.name, required this.action, required this.icon});
}

class MenuOptions {
  static final List<MenuItem> options = [
    MenuItem(
      name: 'Demo',
      icon: Icon(Icons.stream, color: Colors.black),
      action: (BuildContext context) {
        return () {
          print('Demo');
          Navigator.pop(context, true);
          PageService().changePage(DemoRoutes.demo);
        };
      },
    ),
    MenuItem(
      name: 'Shop',
      icon: Icon(Icons.store, color: Colors.black),
      action: (BuildContext context) {
        return () {
          print('Shop');
          Navigator.pop(context, true);
          BottomNavigationBarService().changeTab(1);
          PageService().changePage(DemoRoutes.shop);
        };
      },
    ),
    MenuItem(
      name: 'Notifications',
      icon: Icon(Icons.notifications, color: Colors.black),
      action: (BuildContext context) {
        return () {
          print('Notifications');
          Navigator.pop(context, true);
          PageService().changePage(DemoRoutes.notifications);
        };
      },
    ),
    MenuItem(
      name: 'Settings',
      icon: Icon(Icons.settings, color: Colors.black),
      action: (BuildContext context) {
        return () {
          print('Settings');
          Navigator.pop(context, true);
          PageService().changePage(DemoRoutes.settings);
        };
      },
    ),
  ];
}
