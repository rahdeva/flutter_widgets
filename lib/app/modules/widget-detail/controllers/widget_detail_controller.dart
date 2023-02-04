import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetDetailController extends GetxController {
  late final String widgetName;
  late final Widget widgetView;

  @override
  void onInit() {
    widgetName = Get.arguments["widgetName"];
    widgetView = Get.arguments["widgetView"];
    super.onInit();
  }
}
