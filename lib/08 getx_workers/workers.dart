import 'package:flutter/material.dart';
import 'package:flutter_getx/08%20getx_workers/workers_controller.dart';
import 'package:get/get.dart';

class GetXWorkers extends StatelessWidget {
  /// - Panggil myController dari file MyController
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Workers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                myController.increment();
              },
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                onChanged: (value) {
                  myController.increment();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
