import 'package:flutter/material.dart';
import 'package:flutter_demo/common/providers/notifications-provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

import 'package:flutter_demo/core/screens/notifications/common/notification.model.dart';
import 'package:flutter_demo/core/screens/notifications/widgets/notification-item/notification-item.dart';

class NotificationsList extends ConsumerWidget {
  final List<NotificationModel> list;

  NotificationsList({required this.list});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var _notifications = watch(notificationsProvider).state;

    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context, index) {
        return NotificationItem(
          item: this.list[index],
          onDismissed: () {
            // _notifications.removeNotification(index); // TODO
          },
        );
      },
    );
  }
}
