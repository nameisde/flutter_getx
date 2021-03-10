import 'package:flutter/material.dart';
import 'package:flutter_getx/04%20getx_routes/routes_unnamed/route_unnamed_home.dart';
import 'package:get/get.dart';

class GetXRouteUnnamed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Route Unnamed'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// -- Pindah kehalaman lain menggunakan
            /// -- Perintah Get.to();
            ElevatedButton(
              onPressed: () {
                Get.to(
                  GetXRouteUnnamedHome(),

                  /// -- Tampilan dari halaman yang akan dituju
                  /// -- Menjadi tampilan penuh dan mengganti
                  /// -- Icon back menjadi icon close
                  // fullscreenDialog: true,

                  /// -- Animasi transisi perpindahan halaman
                  /// -- Terdapat berbagai macam transisi
                  /// -- Ketik 'Transition.' dan pilih jenis transisi
                  // transition: Transition.leftToRight
                );
              },
              child: Text('Go to Home'),
            ),

            /// -- Pindah kehalaman selanjutnya tanpa 
            /// -- Opsi untuk kembali kehalaman sebelumnya
            ElevatedButton(
              onPressed: () {
                Get.off(GetXRouteUnnamedHome());
              },
              child: Text('Get to Home Off'),
            ),

            /// -- Pindah kehalaman selanjutnya dan cancel
            /// -- Seluruh halaman atau routes sebelumnya 
            ElevatedButton(
              onPressed: () {
                Get.offAll(GetXRouteUnnamedHome());
              },
              child: Text('Get to Home Off All'),
            ),

            /// -- Pindah kehalaman selanjutnya dengan
            /// -- Membawa sebuah data kehalaman tujuan
            ElevatedButton(
              onPressed: () {
                Get.to(GetXRouteUnnamedHome(), arguments: 'Data From Main');
              },
              child: Text('Get to Home With Data'),
            ),

            /// -- Pindah kehalaman selanjutnya dan
            /// -- Menerima data dari halaman home (selanjutnya) 
            /// -- Menggunakan async method 
            ElevatedButton(
              onPressed: () async {
                var data = await Get.to(GetXRouteUnnamedHome());
                print('The received data is $data');
              },
              child: Text('Get to Home With Data'),
            ),
          ],
        ),
      ),
    );
  }
}
