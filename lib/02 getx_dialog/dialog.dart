import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// -- Snackbar default atau basic GetX
            ElevatedButton(
              child: Text('Show Dialog'),
              onPressed: () {
                /// -- Default dari dialog
                Get.defaultDialog(
                  title: 'Dialog Title',
                  middleText: 'Middle Title Here Text',
                  // backgroundColor: Colors.blueAccent,
                  textConfirm: 'Konfirmasi',
                  textCancel: 'Batal',

                  // -- Function untuk Confirm
                  onConfirm: () {
                    Get.back();
                  },
                   // -- Function untuk Cancel
                  onCancel: () {
                    Get.back();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
