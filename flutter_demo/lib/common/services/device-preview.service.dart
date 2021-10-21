import 'package:rxdart/rxdart.dart';

class DevicePreviewService {
  BehaviorSubject<bool> devicePreviewEnabledSubject = BehaviorSubject.seeded(true);

  Stream<bool> get devicePreviewEnabled => devicePreviewEnabledSubject.stream;

  static final DevicePreviewService _singleton = DevicePreviewService._internal();

  factory DevicePreviewService() {
    return _singleton;
  }

  DevicePreviewService._internal();

  setDevicePreviewEnabled(bool value) {
    if (value != devicePreviewEnabledSubject.value) {
      devicePreviewEnabledSubject.add(value);
    }
  }
}
