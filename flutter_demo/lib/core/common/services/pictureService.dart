import 'package:rxdart/rxdart.dart';

class PictureService {
  BehaviorSubject<String> _picture = BehaviorSubject.seeded('null');

  ValueStream<String> get stream$ => _picture.stream;

  get picture => _picture.value;

  void changePicture(String index) {
    _picture.add(index);
  }
}

final globalPictureService = PictureService();
