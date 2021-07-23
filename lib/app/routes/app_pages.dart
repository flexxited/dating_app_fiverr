import 'package:get/get.dart';

import 'package:dating_app/app/modules/browse/views/browse_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BROWSE;

  static final routes = [
    GetPage(
      name: _Paths.BROWSE,
      page: () => BrowseView(),
    ),
  ];
}
