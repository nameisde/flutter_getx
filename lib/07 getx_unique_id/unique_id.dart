import 'package:flutter/material.dart';
import 'package:flutter_getx/07%20getx_unique_id/unique_id_controller.dart';
import 'package:get/get.dart';

class GetXUniqueId extends StatefulWidget {
  @override
  _GetXUniqueIdState createState() => _GetXUniqueIdState();
}

class _GetXUniqueIdState extends State<GetXUniqueId> {

  /// - Panggil myController dari file MyController
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Unique ID'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            /// -- Versi [1]
            /// -- Pada versi pertama ini value dari ${controller.count} akan bertambah
            /// -- Karena kita telah memberikan nilai id: 'count'
            /// -- Sesuai dengan ketentuan pada controller
            /// -- Bahwa ['count'] adalah nilai atau value yang akan kita update
            GetBuilder<MyController>(
              id: 'count',
              builder: (controller) {
                return Text(
                  'The value is ${controller.count}',
                  style: TextStyle(fontSize: 25),
                );
              },
            ),

            /// -- Versi[2]
            /// -- Pada versi ini value dari ${controller.count} tidak akan bertambah
            /// -- Karena nilai atau id: 'count' tidak kita deskripsikan
            /// -- Pada GetBuilder<MyController>
            GetBuilder<MyController>(
              // id: 'count',
              builder: (controller) {
                return Text(
                  'The value is ${controller.count}',
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(height: 25),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                
                /// -- Memanggil fungsi increment didalam myController
                myController.increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
