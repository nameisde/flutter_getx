import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customclass_student.dart';

class GetXStateManagementCustomClass extends StatelessWidget {

  /// -- Ada 2 cara penggunaan statemanagement menggunakan Obx 
  /// -- Cara pertama menggunakan individual observable
  /// -- Cara kedua menggunakan entire class observable
  /// 
  /// -- Default dari code dibawah menggunakan individual observable
  /// -- Untuk menggunakan cara kedua atau entire class observable
  /// -- Silahkan uncomment syntax 1,2,3 dan 4 (tahap 4 ada di class Student)
  /// -- Dan jangan lupa untuk comment code individual observable
  @override
  Widget build(BuildContext context) {
    /// -- Membuat variable yang menampung class student
    var student = Student();

    /// -- Untuk membuat entire class observable
    /// -- Uncomment : 1
    // final student = Student(name: "tom", age: 25).obs;
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX State Management Custom Class'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// -- Text widget akan menjadi observable karena
            /// -- Telah ditambahkan Obx pada Text widget
            /// -- Didalam Text widget kita memasukan value nama dari student
            /// -- Student disini mengacu pada variable student yang mengambil
            /// -- Data dari class Student yang berisi name dan age
            Obx(
              () => Text(
                'Name is ${student.name.value}',
                style: TextStyle(fontSize: 25),
              ),
            ),

            /// -- Uncomment : 2
            // Obx(
            //   () => Text(
            //     'Name is ${student.value.name}',
            //     style: TextStyle(fontSize: 25),
            //   ),
            // ),

            SizedBox(height: 25),

            /// -- Tombol ini akan mengubah value dari variable
            /// -- Yang kita pantau, observasi, atau tinjau yaitu
            /// -- Widget yang memiliki syntax '.obs'
            ElevatedButton(
              child: Text(
                'Upper',
              ),
              onPressed: () {
                /// --- Cara ini untuk individual variable observable

                /// -- Mengubah value dari text student name menjadi huruf besar
                // student.name.value = student.name.value.toUpperCase();

                /// -- Mengubah value dari text student name menjadi huruf kecil
                // student.name.value = student.name.value.toLowerCase();

                student.name.value = student.name.value.toUpperCase();

                /// --- Cara untuk entire class observable 
                /// -- Uncomment : 3
                // student.update((student) {
                //   student.name = student.name.toString().toUpperCase();
                // });
              },
            ),
          ],
        ),
      ),
    );
  }
}
