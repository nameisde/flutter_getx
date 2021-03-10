import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetXGetStorage extends StatelessWidget {

  /// -- Buat variable penampung untuk controller email
  /// -- Dan storage, untuk menyimpan data dari button
  var emailController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetStorage with Email Validation'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: emailController,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                child: Text('Write'),
                onPressed: () {

                  /// -- Jika email yang di input oleh user 
                  /// -- Sesuai dengan syarat yang ditentukan yaitu string
                  /// -- Maka data emailcontroller.text akan ditulis kedalam storage
                  if (GetUtils.isEmail(emailController.text)) {
                    storage.write('email', emailController.text);
                  } else {

                    /// -- Jika email yang user input tidak sesuai
                    /// -- Dengan syarat maka akan muncul sebuah snackbar
                    Get.snackbar(
                      'Incorrect Email',
                      'Provide Email in valid format',
                      colorText: Colors.white,
                      backgroundColor: Colors.red,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text('Read'),
              onPressed: () {

                /// -- Apabila user berhasil memasukan data kedalam storage
                /// -- Maka selanjutnya kita dapat membaca data tersebut
                /// -- Melalui tombol 'Read'
                print('The email is ${storage.read('email')}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
