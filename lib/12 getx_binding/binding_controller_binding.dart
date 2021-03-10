import 'package:flutter_getx/12%20getx_binding/my_controller.dart';
import 'package:get/get.dart';

class BindingControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
