import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXSnackbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // -- Snackbar default atau basic GetX
            ElevatedButton(
              child: Text('Show Snackbar Default'),
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title",
                  "This will be Snackbar Message",
                );
              },
            ),

            // -- Snackbar dengan position
            ElevatedButton(
              child: Text('Show Snackbar Position'),
              onPressed: () {
                Get.snackbar("Snackbar Title", "This will be Snackbar Message",

                    /// -- Posisi default Snackbar GetX adalah Posisi Top
                    /// -- Posisi Snackbar pada GetX hanya tersedia 2 jenis yaituTop dan Bottom

                    // snackPosition: SnackPosition.TOP,
                    // snackPosition: SnackPosition.BOTTOM,

                    snackPosition: SnackPosition.BOTTOM);
              },
            ),

            /// -- Snackbar dengan position
            ElevatedButton(
              child: Text('Show Snackbar Color'),
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title",
                  "This will be Snackbar Message",

                  /// -- Properti GetX untuk warna text 'colorText'
                  /// -- Properti GetX untuk warna background 'backgroundColor'

                  colorText: Colors.white,
                  backgroundColor: Colors.redAccent,
                );
              },
            ),

            /// -- Snackbar another properties
            ElevatedButton(
              child: Text('Show Snackbar Another'),
              onPressed: () {
                Get.snackbar("Snackbar Title", "This will be Snackbar Message",

                    // maxWidth: 300,
                    isDismissible: true,
                    forwardAnimationCurve: Curves.easeInOut,
                    dismissDirection: SnackDismissDirection.VERTICAL,
                    // dismissDirection: SnackDismissDirection.HORIZONTAL,
                    icon:
                        Icon(Icons.notification_important, color: Colors.white),

                    /// -- Nonaktifkan animasi dari icon
                    // shouldIconPulse: false,

                    /// -- tingkat blur overlay saat snackbar muncul
                    // overlayBlur: 1,

                    /// -- warna overlay saat snackbar muncul
                    // overlayColor: Colors.black87,

                    borderRadius: 10,
                    colorText: Colors.white,
                    backgroundColor: Colors.black87,
                    animationDuration: Duration(milliseconds: 1000));
              },
            ),
          ],
        ),
      ),
    );
  }
}
