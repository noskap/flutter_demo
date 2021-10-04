import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/services/device-preview.service.dart';
import 'package:flutter_demo/core/demo-app/common/services/notification.service.dart';
import 'package:flutter_demo/core/demo-app/common/widgets/big-drawer.dart';
import 'package:flutter_demo/core/demo-app/end_drawer.dart';
import 'package:flutter_demo/core/demo-app/floating_action_button.dart';

import 'common/constants/menu-options.dart';
import 'common/services/page.service.dart';
import 'common/widgets/demo.dart';

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
