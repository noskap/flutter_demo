import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/core/common/theme/app-theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/common/localization/Localizations.dart';
import 'core/common/services/device-preview.service.dart';
import 'core/screens/contact-us/contact-us.dart';
import 'core/screens/my-details/my-details.dart';
import 'core/screens/notifications/notifications.dart';
import 'core/screens/root.dart';
import 'core/screens/settings/settings.dart';

class Routes {
  static const String contactUs = '/contactUs';
  static const String myDetails = '/myDetails';
  static const String notifications = '/notifications';
  static const String settings = '/settings';
}

final AppRoutes = <String, WidgetBuilder>{
  Routes.contactUs: (context) => ContactUs(),
  Routes.myDetails: (context) => MyDetails(),
  Routes.notifications: (context) => Notifications(),
  Routes.settings: (context) => Settings(),
};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}
class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Consumer(
      builder: (context, watch, child) {
        return StreamBuilder(
          stream: DevicePreviewService().devicePreviewEnabled,
          initialData: false,
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            return DevicePreview(
              storage: const NoDevicePreviewStorage(),
              defaultDevice: Devices.android.pixel3,
              enabled: true,
              // enabled: (!kReleaseMode && snapshot != null && snapshot.data != null && snapshot.data != false),
              builder: (BuildContext context) => MaterialApp(scrollBehavior: MyCustomScrollBehavior(),
                debugShowCheckedModeBanner: false,
                routes: AppRoutes,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                supportedLocales: [
                  // '*' indicate the language pack should ignore region specific language packs
                  // country codes like 'US' would be used to specify American specific language pack
                  Locale('en', '*'),
                  Locale('ru', '*'),
                  Locale('es', '*'),
                ],
                localizationsDelegates: [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                localeResolutionCallback: (Locale? locale, Iterable<Locale> supportedLocales) {
                  if (locale != null) {
                    for (var supportedLocale in supportedLocales) {
                      if (supportedLocale.languageCode == locale.languageCode &&
                          (supportedLocale.countryCode == '*' || supportedLocale.countryCode == locale.countryCode)) {
                        return supportedLocale;
                      }
                    }
                  }

                  return supportedLocales.first;
                },
                home: Root(),
              ),
            );
          },
        );
      },
    );
  }
}
