import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Bottom Sheet'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Bottom Sheet'),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          title: Text('Light Theme'),
                          leading: Icon(Icons.wb_sunny_outlined),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          title: Text('Dark Theme'),
                          leading: Icon(Icons.wb_sunny),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),

                  /// -- Warna layar yang muncul saat bottomsheet di tekan
                  barrierColor: Colors.red.shade100,

                  /// -- Warna dasar dari bottomsheet yang muncul
                  backgroundColor: Colors.purple.shade100,

                  /// -- Properti menutup bottomsheet dengan klik
                  /// -- Kesembarang tempat didalam layar
                  isDismissible: true,

                  /// -- Mengubah 'rounded' bagian atas kanan dan kiri bottomsheet
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),

                  /// -- Menutup bottomsheet dengan cara men-drag
                  enableDrag: false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
