import 'package:rxdart/rxdart.dart';

class NotificationService {
  static final NotificationService _singleton = NotificationService._internal();

  factory NotificationService() {
    return _singleton;
  }

  NotificationService._internal();

  BehaviorSubject<List<String>> notificationSubject = BehaviorSubject();

  ValueStream<List<String>> get stream => notificationSubject.stream;

  List<String> list = [];

  pushNotification(String thing) {
    list.add(thing);
    notificationSubject.add(list);
  }

  clear() {
    list = [];
    notificationSubject.add(list);
  }
}
