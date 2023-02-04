import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/widget-detail/bindings/widget_detail_binding.dart';
import '../modules/widget-detail/views/widget_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WIDGET_DETAIL,
      page: () => WidgetDetailView(),
      binding: WidgetDetailBinding(),
    ),
  ];
}
