import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/services/pictureService.dart';

class DisplayPictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder(
        stream: globalPictureService.stream$,
        builder: (BuildContext context, AsyncSnapshot<String> snap) {
          return snap.data != null ? Image.file(File(snap.data ?? '')) : Icon(Icons.image);
        },
      ),
    );
  }
}
