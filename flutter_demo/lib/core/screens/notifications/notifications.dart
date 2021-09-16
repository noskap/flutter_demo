import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/constants/text-keys.dart';
import 'package:flutter_demo/core/common/localization/Localizations.dart';
import 'package:flutter_demo/core/screens/notifications/widgets/notification-list/notification-list.dart';
import 'package:flutter_demo/core/common/providers/notifications-provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Notifications extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var notifications = watch(notificationsProvider).state;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.translate(TextKeys.Notifications) ?? ''),
      ),
      body: NotificationsList(list: notifications),
    );
  }
}
