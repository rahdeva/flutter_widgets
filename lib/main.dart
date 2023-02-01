import 'package:auto_size_text/auto_size_text.dart';
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
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Every Flutter Widget',
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter'),
          ),
          // body: const Text('Flutter'),
          body: Container(
            width: 100.w * 0.86,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  width: 60,
                  height: 60,
                  child: const Icon(
                    Icons.calendar_month,
                  )
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Book Appointment',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 19,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                            child: AutoSizeText(
                              'Schedule an appointment with our licensed professional.',
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Color(0xB4FFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
