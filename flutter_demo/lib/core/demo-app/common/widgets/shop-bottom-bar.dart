import 'package:flutter/material.dart';
import 'package:flutter_demo/core/demo-app/common/services/bottom-navigation-bar.service.dart';

class ShopBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: BottomNavigationBarService().selectedTabStream,
      initialData: 0,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return BottomNavigationBar(
          currentIndex: snapshot.data ?? 0,
          showUnselectedLabels: true,
          iconSize: 0,
          unselectedFontSize: 11,
          selectedFontSize: 13,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Coupons',
            ),
          ],
          onTap: (int index) {
            BottomNavigationBarService().changeTab(index);
          },
        );
      },
    );
  }
}
