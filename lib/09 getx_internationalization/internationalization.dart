import 'package:flutter/material.dart';
import 'package:flutter_getx/09%20getx_internationalization/internationalization_controller.dart';
import 'package:get/get.dart';

class GetXInternationalization extends StatelessWidget {
  /// - Panggil myController dari file MyController
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Internationalization'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              child: Text('ENGLISH'),
              onPressed: () {
                myController.changeLanguage('en', 'US');
              },
            ),
            ElevatedButton(
              child: Text('FRANCE'),
              onPressed: () {
                myController.changeLanguage('fr', 'FR');
              },
            ),
            ElevatedButton(
              child: Text('BAHASA'),
              onPressed: () {
                myController.changeLanguage('id', 'ID');
              },
            ),
          ],
        ),
      ),
    );
  }
}
