import 'package:get/get.dart';

class MyController extends GetxController {

  /// -- Nilai awal dari count
  var count = 0;

  void increment () {

    /// -- Fungsi untuk menambahkan value atau nilai
    /// -- Setiap kali fungsi increment dipanggil
    count++;

    /// -- void increment update() akan dijalankan apabila
    /// -- id dari GetBuilder<MyController> adalah ['count']
    update(['count']);
  }
}
