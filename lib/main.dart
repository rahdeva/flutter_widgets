import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          useInheritedMediaQuery: true,
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          title: 'Every Flutter Widget',
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      }
    );
  }
}
