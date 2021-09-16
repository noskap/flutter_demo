import 'package:flutter_demo/core/screens/notifications/common/notification.model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

StateProvider<List<NotificationModel>> notificationsProvider = StateProvider((ref) {
  return [
    NotificationModel(title: 'Get Ready!', message: 'Friday!'),
    NotificationModel(title: 'Hows That', message: 'Rocket time!'),
    NotificationModel(title: 'What?', message: ''),
    NotificationModel(title: '🎸 Are you kidding?', message: 'Van Halen live in Concert'),
  ];
});
