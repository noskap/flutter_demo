import 'package:rxdart/rxdart.dart';

class CounterService {
  static final CounterService _singleton = CounterService._internal();
  BehaviorSubject<int> counter = BehaviorSubject.seeded(0);

  factory CounterService() {
    return _singleton;
  }

  CounterService._internal();

  ValueStream<int> get stream$ => counter.stream;

  int get current => counter.value;

  increment() {
    counter.add(current + 1);
  }
}
