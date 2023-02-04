import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/widget_detail_controller.dart';

class WidgetDetailView extends GetView<WidgetDetailController> {
  const WidgetDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.widgetName
        ),
      ),
      body: controller.widgetView
    );
  }
}
