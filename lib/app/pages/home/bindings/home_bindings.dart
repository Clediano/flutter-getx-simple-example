import 'package:get/get.dart';
import 'package:kmobx/app/pages/home/controller/home_controller.dart';
import 'package:kmobx/app/services/api_service.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ApiService>(() => ApiService());
  }
}
