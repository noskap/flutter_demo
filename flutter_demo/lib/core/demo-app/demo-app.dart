import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/services/device-preview.service.dart';
import 'package:flutter_demo/core/demo-app/common/services/bottom-navigation-bar.service.dart';
import 'package:flutter_demo/core/demo-app/common/services/notification.service.dart';
import 'package:flutter_demo/core/demo-app/common/widgets/shop-bottom-bar.dart';
import 'package:flutter_demo/core/demo-app/common/widgets/big-drawer.dart';

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
        return Scaffold(
          // key: _scaffoldKey,
          body: StreamBuilder(
            stream: PageService().stream,
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return DemoAppRoutes[snapshot.data] ?? Demo();
              } else {
                return Demo();
              }
            },
          ),
          bottomNavigationBar: StreamBuilder(
            stream: BottomNavigationBarService().stream,
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              switch (snapshot.data) {
                case true: // Drawer
                  return BigDrawer();
                case false: // Shopping screen
                  return ShopBottomBar();
                default:
                  return SizedBox(); // Empty view
              }
            },
          ),
          endDrawer: Container(
            child: SizedBox(
              width: 200,
              child: ListView.separated(
                itemCount: MenuOptions.options.length,
                separatorBuilder: (context, index) => SizedBox(/* height: _buttons[index].spacing,*/),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: MenuOptions.options[index].action(context),
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
                      child: Row(
                        children: [
                          MenuOptions.options[index].icon,
                          SizedBox(width: 10.0),
                          Text(
                            MenuOptions.options[index].name,
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          endDrawerEnableOpenDragGesture: false,
          floatingActionButton: FloatingButtonWithContext(showBadge: showBadge),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
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
