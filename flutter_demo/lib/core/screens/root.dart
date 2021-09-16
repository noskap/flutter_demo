import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/services/device-preview.service.dart';
import 'package:flutter_demo/core/screens/authenticate/authenticate.dart';
import 'package:flutter_demo/core/demo-app/demo-app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Root extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // Toggle device preview package depending on screen size
    final width = MediaQuery.of(context).size.width;
    DevicePreviewService().setDevicePreviewEnabled(!(width < 1000));
          return DemoApp();
  }
}
