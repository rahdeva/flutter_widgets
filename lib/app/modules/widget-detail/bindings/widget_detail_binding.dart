import 'package:get/get.dart';

import '../controllers/widget_detail_controller.dart';

class WidgetDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WidgetDetailController>(
      () => WidgetDetailController(),
    );
  }
}
