import 'package:flutter/material.dart';
import 'package:flutter_demo/core/demo-app/common/bottom-bar-states.dart';
import 'package:flutter_demo/core/demo-app/common/services/bottom-navigation-bar.service.dart';
import 'package:flutter_demo/core/demo-app/screens/store/common/constants/store.tabs.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BottomNavigationBarService().changeState(States.shop);
    return Container(
      padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
      child: StreamBuilder(
        initialData: 0,
        stream: BottomNavigationBarService().selectedTabStream,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          print(snapshot.data);
          return StoreTabs[snapshot.data??0];
        },
      ),
    );
  }
}
