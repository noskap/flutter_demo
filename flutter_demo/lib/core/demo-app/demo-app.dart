import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/services/device-preview.service.dart';
import 'package:flutter_demo/core/demo-app/common/services/bottom-navigation-bar.service.dart';
import 'package:flutter_demo/core/demo-app/common/services/notification.service.dart';
import 'package:flutter_demo/core/demo-app/common/widgets/shop-bottom-bar.dart';
import 'package:flutter_demo/core/demo-app/common/widgets/big-drawer.dart';
import 'package:flutter_demo/core/demo-app/end_drawer.dart';

import 'common/constants/menu-options.dart';
import 'common/services/page.service.dart';
import 'common/widgets/demo.dart';

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Toggle device preview package depending on screen size
    final width = MediaQuery.of(context).size.width;
    DevicePreviewService().setDevicePreviewEnabled(!(width < 1000));

    return StreamBuilder(
      stream: NotificationService().stream,
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        var showBadge = false;
        if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          showBadge = true;
        }
        return SafeArea(
          child: Scaffold(
            body: StreamBuilder(
              stream: PageService().stream,
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasData) {
                  return DemoAppRoutes[snapshot.data] ?? Demo();
                } else {
                  return Demo(); // TODO new home widget here
                }
              },
            ),
            bottomNavigationBar: BigDrawer(),
            // bottomNavigationBar: StreamBuilder(
            //   stream: BottomNavigationBarService().stream,
            //   builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            //     switch (snapshot.data) {
            //       case true: // Drawer
            //         return BigDrawer();
            //       case false: // Shopping screen
            //         return ShopBottomBar();
            //       default:
            //         return SizedBox(); // Empty view
            //     }
            //   },
            // ),
            endDrawer: EndDrawer(),
            endDrawerEnableOpenDragGesture: false,
            floatingActionButton: FloatingButtonWithContext(showBadge: showBadge),
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          ),
        );
      },
    );
  }
}

class FloatingButtonWithContext extends StatelessWidget {
  late bool showBadge;

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
