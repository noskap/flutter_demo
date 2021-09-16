import 'package:rxdart/rxdart.dart';

class PageService {
  static final PageService _singleton = PageService._internal();

  factory PageService() {
    return _singleton;
  }

  PageService._internal();

  BehaviorSubject<String> currentPage = BehaviorSubject();

  ValueStream<String> get stream => currentPage.stream;

  changePage(String route) {
    currentPage.add(route);
  }
}
