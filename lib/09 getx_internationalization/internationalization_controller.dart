import 'dart:ui';

import 'package:get/get.dart';

class MyController extends GetxController {

  // -- Membuat fungsi untuk mengganti bahasa
  void changeLanguage(var param1, var param2) {
    /// -- Membuat sebuah variable yang menampung 
    /// -- Nilai dari param1 dan param2
    var locale = Locale(param1, param2);
    
    /// -- Get mengupdate locale dari variabel locale
    Get.updateLocale(locale);
  }
}
