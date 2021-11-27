import 'package:flutter/material.dart';
import 'package:flutter_demo/common/constants/text-keys.dart';
import 'package:flutter_demo/common/localization/Localizations.dart';

import 'package:flutter_demo/core/demo-app/common/services/notification.service.dart';

class DemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NotificationService().pushNotification(AppLocalizations.of(context)?.translate(TextKeys.NotificationPlaceholder) ?? '');
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
        ],
      ),
    );
  }
}
