import 'package:flutter/material.dart';
import 'package:flutter_getx/05%20getx_statemanagement/getx_statemanagement_controller/controller_mycontroller.dart';
import 'package:get/get.dart';

class GetXStateManagementController extends StatefulWidget {
  @override
  _GetXStateManagementControllerState createState() => _GetXStateManagementControllerState();
}

class _GetXStateManagementControllerState extends State<GetXStateManagementController> {
  /// -- Membuat variable yang menampung class MyController
  /// -- Dengan nama variable myController
  /// -- Yang mengambil data dari MyController
  MyController myController = Get.put(MyController());


  /// -- Ada 2 cara dalam menggunakan GetXController
  /// -- Cara pertama yaitu menggunakan individual obs
  /// -- Cara kedua yaitu menggunakan entire class obs
  /// 
  /// -- Pada code dibawah, implementasi dilakukan dengan cara pertama
  /// -- Untuk menggunakan cara kedua kalian harus uncomment beberapa kode
  /// -- Sesuai dengan keterangan tahapan diatas code tsb
  /// 
  /// -- Pada halaman ini ada 2 tahap, yaitu tahap [1] dan tahap [2]
  /// -- Untuk menggunakan metode entire class obs
  /// 
  /// -- Urutan halaman : controller, student, mycontroller
  /// 
  /// 
  /// --- Perbedaan antara individual obs dengan entire class obs
  /// --- Menggunakan GetxController terletak pada class student dan mycontroller
  /// 
  /// ---# Class Student
  /// --- Pada individual obs, class student kita harus memberikan nilai atau value
  /// --- Pada variable penampung, pada kasus ini adalah name dan age
  /// --- Dan diakhiri dengan '.obs'
  /// 
  /// ---# Class Student
  /// --- Pada entire class obs, class student kita hanya perlu untuk membuat variable
  /// --- Dan buat constructor dari class student tersebut yang menunjuk variable yang akan
  /// --- Dibuat constructornya, pada kasus ini adalah 'this.name' dan 'this.age'
  /// 
  /// ---# MyController
  /// --- Pada individual obs, kita perlu membuat sebuah variable untuk
  /// --- Menampung class student, setelah itu kita membuat sebuah function
  /// --- Yang digunakan untuk mengkonversi text kedalam uppercase

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX State Management Controller'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// -- Individual obs
            Obx(
              () => Text(
                'Name is ${myController.student.name}',
                style: TextStyle(fontSize: 25),
              ),
            ),

            /// -- Entire class obs
            /// -- Uncomment [1]
            // Obx(
            //   () => Text(
            //     'Name is ${myController.student.value.name}',
            //     style: TextStyle(fontSize: 25),
            //   ),
            // ),

            SizedBox(height: 25),

            /// -- Individual obs
            ElevatedButton(
              onPressed: () {
                myController.convertToUpperCase();
              },
              child: Text('Upper'),
            ),

            /// -- Entire class obs
            /// -- Uncomment [2]
            // ElevatedButton(
            //   onPressed: () {
            //     myController.convertUpperCase();
            //   },
            //   child: Text('Upper'),
            // ),

          ],
        ),
      ),
    );
  }
}
