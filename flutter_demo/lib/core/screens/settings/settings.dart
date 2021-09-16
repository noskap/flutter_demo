import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/constants/text-keys.dart';
import 'package:flutter_demo/core/common/localization/Localizations.dart';

// TODO implement logic, this is just a dummy page
class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)?.translate(TextKeys.Settings)??'')),
      body: Center(child: Text(AppLocalizations.of(context)?.translate(TextKeys.Settings)??'')),
    );
  }
}
