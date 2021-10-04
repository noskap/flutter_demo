import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class FloatingButtonWithContext extends StatelessWidget {
  late final bool showBadge;

  FloatingButtonWithContext({required this.showBadge});

  openMenu(BuildContext context) {
    // _scaffoldKey.currentState.openEndDrawer(); // Stateful
    Scaffold.of(context).openEndDrawer(); // Stateless
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Badge(
        showBadge: showBadge,
        position: BadgePosition.topEnd(top: 6, end: -5),
        elevation: 0,
        shape: BadgeShape.circle,
        badgeColor: Colors.red,
        child: IconButton(
          icon: Icon(Icons.menu),
          color: Theme.of(context).buttonTheme.colorScheme?.primary ?? Colors.grey,
          onPressed: () {
            openMenu(context);
          },
        ),
      ),
      color: Colors.blue,
      onPressed: () {
        openMenu(context);
      },
    );
  }
}
