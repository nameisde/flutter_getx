import 'package:flutter/material.dart';
import 'package:flutter_getx/10%20getx_dependency_injection/dependency_injection_controller.dart';
import 'package:get/get.dart';

class GetXDependencyInjection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// -- MyController instance akan dibuat apabila tidak digunakan
    /// -- Tag akan digunakan untuk mencari instance dari myController
    /// -- Controller akan terdispose apabila tidak digunakan
    /// -- Tetapi, apabila permanent adalah true maka instasnce
    /// -- Akan tetap hidup selama aplikasi dijalankan
    /// -- [1]
    // MyController myController =
    //     Get.put(MyController(), tag: 'instance1', permanent: true);

    /// -- Instance akan dibuat saat akan digunakan
    /// -- Sama seperti 'permanent' tetapi apabila menggunakan lazyput
    /// -- Maka instance akan dibuang/dihapus saat tidak digunakan
    /// -- [2]
    /// -- [3]
    // Get.lazyPut(() => MyController());

    /// -- Menggunakan metode async await
    // Get.putAsync<MyController>(() async => await MyController());

    /// -- Permanent akan otomatis menjadi true dan isSingleton false
    // Get.create<MyController>(() => MyController());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Click Me'),
              onPressed: () {
                /// -- Instance akan dibuat sesuai dengan nama tag
                /// -- [1]
                // Get.find<MyController>(tag: 'instance1');

                /// -- Mencari instance pada MyController
                /// -- [2]
                // Get.find<MyController>();

                /// -- Mencari sebuah fungsi didalam MyController
                /// -- Pada kasus ini GetX mencari fungsi 'incrementCounter'
                /// -- [3]
                Get.find<MyController>().incrementCounter();
              },
            ),
          ],
        ),
      ),
    );
  }
}
