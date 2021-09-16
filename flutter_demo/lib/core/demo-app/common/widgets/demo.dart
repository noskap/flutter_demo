import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/constants/text-keys.dart';
import 'package:flutter_demo/core/common/localization/Localizations.dart';
import 'package:flutter_demo/core/demo-app/common/services/bottom-navigation-bar.service.dart';
import 'package:flutter_demo/core/demo-app/common/services/notification.service.dart';

import '../bottom-bar-states.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          Text(AppLocalizations.of(context)?.translate(TextKeys.Notifications) ?? ''),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text(AppLocalizations.of(context)?.translate(TextKeys.Add) ?? ''),
                  onPressed: () {
                    NotificationService().pushNotification(AppLocalizations.of(context)?.translate(TextKeys.NotificationPlaceholder) ?? '');
                  },
                ),
                ElevatedButton(
                  child: Text(AppLocalizations.of(context)?.translate(TextKeys.Remove) ?? ''),
                  onPressed: () {
                    NotificationService().clear();
                  },
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text(AppLocalizations.of(context)?.translate(TextKeys.Cart) ?? ''),
                  onPressed: () {
                    BottomNavigationBarService().changeState(States.shop);
                  },
                ),
                ElevatedButton(
                  child: Text(AppLocalizations.of(context)?.translate(TextKeys.Drawer) ?? ''),
                  onPressed: () {
                    BottomNavigationBarService().changeState(States.drawer);
                  },
                ),
                ElevatedButton(
                  child: Text(AppLocalizations.of(context)?.translate(TextKeys.None) ?? ''),
                  onPressed: () {
                    BottomNavigationBarService().changeState(States.none);
                  },
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
