import 'package:flutter/material.dart';
import 'package:flutter_getx/12%20getx_binding/home_binding.dart';
import 'package:flutter_getx/12%20getx_binding/my_controller.dart';
import 'package:get/get.dart';

class GetXBinding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Binding'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'The value is ${Get.find<MyController>().count}',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                Get.find<MyController>().increment();
              },
            ),
            SizedBox(height: 25),
            ElevatedButton(
              child: Text('Home'),
              onPressed: () {
                // Get.to(HomeBinding());

                // Get.toNamed('/homebinding');

                // Get.to(Home(), binding: HomeControllerBinding());
              },
            ),
          ],
        ),
      ),
    );
  }
}
