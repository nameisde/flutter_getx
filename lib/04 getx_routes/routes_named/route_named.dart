/// -- Buka file main.dart untuk melihat routes yang telah dibuat
/// -- Tambahkan route kalian didalam file main.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXRouteNamed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Route Named'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// -- Basic pindah halaman dengan named route
            /// -- Menggunakan perintah Get.toNamed();
            ElevatedButton(
              child: Text('Go to Home'),
              onPressed: () {
                Get.toNamed('/routenamedhome');
              },
            ),

            /// -- Pindah halaman tanpa dapat pilihan kembali
            /// -- Kehalaman atau route sebelumnya
            ElevatedButton(
              child: Text('Go to Home Off'),
              onPressed: () {
                Get.offNamed('/routenamedhome');
              },
            ),

            /// -- Pindah halaman tanpa dapat pilihan kembali
            /// -- Kehalaman atau route sebelumnya
            /// -- Dan membatalkan sebuah halaman atau route
            /// -- Yang ada dibelakangnya
            ElevatedButton(
              child: Text('Go to Home Off All'),
              onPressed: () {
                Get.offAllNamed('/routenamedhome');
              },
            ),

            /// -- Mengirimkan sebuah data kehalaman selanjutnya
            /// == Menggunakan Dynamic URL link
            ElevatedButton(
              child: Text('Go to Home Dynamic URL link'),
              onPressed: () {
                Get.toNamed(
                  '/routenamedhome?channel=Nameisde&content=Fluttet GetX',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
