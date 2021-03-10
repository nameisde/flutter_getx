import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXRouteUnnamedHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Route Unnamed Home'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('${Get.arguments}'),            
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              child: Text('Next Screen'),
            ),
            SizedBox(height: 20),

            /// -- Pindah kehalaman sebelumnya atau pop
            /// -- Menggunakan perintah Get.back();
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Back to Main'),
            ),

            /// -- Pindah kehalaman sebelumnya atau pop
            /// -- Menggunakan perintah Get.back();
            /// -- Dengan membawa sebuah data
            ElevatedButton(
              onPressed: () {
                /// -- Result adalah data yang dikirimkan
                /// -- Kehalaman sebelumnya
                Get.back(result: 'This if from Home');
              },
              child: Text('Back to Main With Data'),
            ),
          ],
        ),
      ),
    );
  }
}
