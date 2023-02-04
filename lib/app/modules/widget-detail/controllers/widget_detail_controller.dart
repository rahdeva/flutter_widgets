import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetDetailController extends GetxController {
  late final String widgetName;
  late final Widget widgetView;

  @override
  void onInit() {
    widgetName = Get.arguments["widgetName"] ?? "Widget Detail";
    widgetView = Get.arguments["widgetView"] ?? const Text("Widget Detail");
    super.onInit();
  }
}
