import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXStateManagementReactive extends StatefulWidget {
  @override
  _GetXStateManagementReactiveState createState() => _GetXStateManagementReactiveState();
}

class _GetXStateManagementReactiveState extends State<GetXStateManagementReactive> {
  var count = 0.obs;

  void increment() {
    count++;
  }

  /// -- Untuk dapat mengubah value dari variable setiap waktu
  /// -- Variabel harus reactive atau observable
  /// -- Untuk membuat reaktive dapat menggunakan Reactive(Rx) .obs
  /// --- .obs adalah sebuah value dari sebuah variable
  ///
  /// -- Untuk mengupdate widget yang menggunakan Rx variable
  /// --- Obx(() => Widget kamu yang menggunakan Rx)
  /// -- Widget akan dan hanya akan terupdate jika Rx variable value berubah
  ///
  /// -- Membuat variable dengan Rx
  /// --- Rx[Type]
  /// --- Rx<Type>
  ///
  /// -- Contoh pengunaan dari Rx[Type]
  /// --- final name = RxString('');
  /// --- final isLogged = RxBool(false);
  /// --- final count = RxInt(0);
  /// --- final balance = RxDouble(0.0);
  /// --- final items = RxList<String>([]);
  /// --- inal Map = RxMap<String, int>({});
  ///
  /// -- Contoh penggunaan dari Rx<Type>
  /// --- final name = Rx<String>('');
  /// --- final isLogged = Rx<Bool>(false);
  /// --- final count = Rx<Int>(0);
  /// --- final balance = Rx<Double>(0.0);
  /// --- final number = Rx<Num>(0);
  /// --- final items = Rx<List<String>>([]);
  /// --- final map = Rx<Map<String, int>>({});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX State Management Reactive'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// -- Variable count telah dideklarasikan diatas
            /// -- Dengan variable awal bernilai 0
            /// 
            /// --- Tanpa GetX : var count = 0;
            /// --- Dengan GetX : var count = 0.obs; 
            /// 
            /// -- Obs disini akan memantau value sebuah variable
            /// -- Pada kasus ini Obs memantau hasil dari count++ 
            Obx(
              () => Text(
                'Count value is $count',
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 25),

            /// -- Pada tombol ini kita panggil method increment
            /// -- Untuk menambahkan sebuah value dari count
            ElevatedButton(
              onPressed: () {
                increment();
              },
              child: Text('Incremenet'),
            ),
          ],
        ),
      ),
    );
  }
}
