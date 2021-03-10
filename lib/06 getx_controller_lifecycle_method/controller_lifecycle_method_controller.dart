import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;

  void increment() async {
    await Future<int>.delayed(Duration(seconds: 5));

    this.count++;
    update();
  }

  void cleanUpTask() {
    print('Clean up task');
  }


  /// -- Pendekatan yang lebih baik digunakan
  /// -- membuat sebuah onInit dan onClose
  @override
  void onInit() {
    print('Init Called');
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
