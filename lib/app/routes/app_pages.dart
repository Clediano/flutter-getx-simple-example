import 'package:get/get.dart';
import 'package:kmobx/app/pages/detail/view/detail_page.dart';
import 'package:kmobx/app/pages/home/bindings/home_bindings.dart';
import 'package:kmobx/app/pages/home/view/home_page.dart';
import 'package:kmobx/app/pages/page_not_found/not_found_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final unknownRoute =
      GetPage(name: '/notfound', page: () => NotFoundPage());

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailPage(),
    ),
  ];
}
