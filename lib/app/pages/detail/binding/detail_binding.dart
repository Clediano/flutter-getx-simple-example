import 'package:get/get.dart';
import 'package:kmobx/app/pages/home/controller/home_controller.dart';
import 'package:kmobx/app/services/api_service.dart';

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    //Injeta uma instancia dessa service
    Get.put<ApiService>(ApiService());
    Get.put<HomeController>(HomeController());
  }
}
