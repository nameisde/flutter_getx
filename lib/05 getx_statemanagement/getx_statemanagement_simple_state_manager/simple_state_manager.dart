import 'package:flutter/material.dart';
import 'package:flutter_getx/05%20getx_statemanagement/getx_statemanagement_simple_state_manager/simple_state_manager_controller.dart';
import 'package:get/get.dart';

class GetXStateManagementSimpleStateManager extends StatelessWidget {
  /// -- Jika properti dari init pada GetX<Type of Controller> tidak digunakan
  /// -- Buat controller
  /// -- Uncomment [1]
  // MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Statemanagement Simple State Manager'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(

              /// -- init pada GetBuilder<Type of Controller> digunakan
              /// -- Apabila kita belum membuat mendeskripsikan controller
              /// -- Yang akan kita gunakan 
              init: MyController(),

              /// -- myController pada builder hanya sebuah nama dari controller
              /// -- Jadi pada Text('${}'); kita dapat menggunakan myController.count
              /// -- Fungsi count adalah fungsi void increment pada file Controller
              builder: (myController) {
                return Text(
                  'The value is ${myController.count}',
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(height: 25),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {

                /// -- Mencari fungsi yang terdapat disebuah controller
                /// -- Pada kasus ini fungsi  yang sudah kita buat
                /// -- Pada MyController adalah sebuah fungsi 'increment' 
                Get.find<MyController>().increment();

                /// -- Uncomment [2]
                // myController.increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
