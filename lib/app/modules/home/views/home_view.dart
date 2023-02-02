import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/modules/home/widgets/widgets_items.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Built-in Widgets'),
      ),
      body: Container(
        width: 100.w,
        color: const Color(0xFFFAFAFA),
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SingleChildScrollView(
          child: ListView.builder(
            itemCount: controller.widgetList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return WidgetItems(
                index: index,
                data: controller.widgetList[index],
              );
            }
          ),
        ),
      ),
    );
  }
}
