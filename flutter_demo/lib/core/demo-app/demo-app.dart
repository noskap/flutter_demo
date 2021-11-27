import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/services/device-preview.service.dart';

import 'package:flutter_demo/core/demo-app/common/services/notification.service.dart';
import 'package:flutter_demo/core/demo-app/common/widgets/big-drawer.dart';
import 'package:flutter_demo/core/demo-app/end_drawer.dart';
import 'package:flutter_demo/core/demo-app/floating_action_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/constants/menu-options.dart';
import 'common/services/page.service.dart';

StateProvider<bool> DarkModeProvider = StateProvider((ref) {
  return true;
});

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Toggle device preview package depending on screen size
    final double width = MediaQuery.of(context).size.width;
    DevicePreviewService().setDevicePreviewEnabled(!(width < 1000));

    return StreamBuilder(
      stream: NotificationService().stream,
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        bool showBadge = false;
        if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          showBadge = true;
        }
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Consumer(
                builder: (BuildContext context, T Function<T>(ProviderBase<Object?, T>) watch, Widget? child) {
                  bool isDarkMode = watch(DarkModeProvider).state;
                  return Row(
                    children: [
                      Text("test"),
                      Spacer(),
                      Text("Dark Mode"),
                      Switch(
                        value: isDarkMode,
                        onChanged: (value) {
                          print('toggle $value');
                          // isDarkMode = !value;
                          watch(DarkModeProvider).state = (value);
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
            body: StreamBuilder(
              stream: PageService().stream,
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasData) {
                  return DemoAppRoutes[snapshot.data] ?? DemoAppRoutes[DemoRoutes.demo] as Widget;
                } else {
                  return DemoAppRoutes[DemoRoutes.demo] as Widget;
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
            // floatingActionButton: FloatingButtonWithContext(showBadge: showBadge),
            // TODO change this to have the notification badge and position over menu button
            floatingActionButton: Badge(
              showBadge: showBadge,
              position: BadgePosition.topEnd(top: -35, end: -15),
              elevation: 0,
              shape: BadgeShape.circle,
              badgeColor: Colors.blue,
              // TODO themeing?
              child: Container(child: Text('')), // Dummy widget to give badge its positioning
              // child: IconButton(
              //   icon: Icon(Icons.menu),
              //   color: Theme.of(context).buttonTheme.colorScheme?.primary ?? Colors.grey,
              //   onPressed: () {
              //     // openMenu(context);
              //   },
              // ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          ),
        );
      },
    );
  }
}
