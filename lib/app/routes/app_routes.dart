part of 'app_pages.dart';

abstract class _Paths {
  static const homePage = '/home';
  static const detailPage = '/detail';
}

abstract class Routes {
  Routes._();

  static const homePage = _Paths.homePage;
  static const detailPage = _Paths.detailPage;
}