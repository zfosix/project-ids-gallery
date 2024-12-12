import 'package:get/get.dart';
import 'package:ids_flutter/app/bindings/detail_binding.dart';
import 'package:ids_flutter/app/bindings/home_binding.dart';
import 'package:ids_flutter/app/pages/detail_page.dart';
import 'package:ids_flutter/app/pages/home_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const homePage = Routes.homePage;
  static const detailPage = Routes.detailPage;

  static final routes = [
    GetPage(
      name: homePage,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: detailPage,
      page: () => const DetailPage(),
      binding: DetailBinding(),
    ),
  ];
}
