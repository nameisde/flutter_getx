import 'package:flutter_getx/12%20getx_binding/home_controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}