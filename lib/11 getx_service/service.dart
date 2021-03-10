import 'package:flutter/material.dart';
import 'package:flutter_getx/11%20getx_service/service_service.dart';
import 'package:get/get.dart';

class GetXService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Service'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {

                /// -- GetX mencari sebuah class
                /// -- Pada kasus ini kita menggunakan class Service
                /// -- Dan pada class service akan mengeksekusi
                /// -- Fungsi incrementCounter();
                Get.find<Service>().incrementCounter();
              },
            ),
          ],
        ),
      ),
    );
  }
}
