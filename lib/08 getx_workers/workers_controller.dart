import 'package:get/get.dart';

class MyController extends GetxController {
  /// -- Memantau perubahan value dari count
  var count = 0.obs;

  void increment() {
    /// -- Menambahkan value dari count
    count++;
  }

  @override
  void onInit() {
    /// -- Memanggil fungsi count setiap waktu apabila value
    /// -- Dari variable count berubah
    // ever(count, (_) => print(count));

    /// -- Memanggil fungsi count setiap waktu apabila value
    /// -- variable dari daftar(list) berubah
    // everAll([count], (_) => print(count));

    /// -- Memanggil fungsi count hanya sekali apabila
    /// -- Terdapat perubahan nilai dari variable
    // once(count, (_) => print(count));

    /// -- Memanggil fungsi count setiap user berhenti mengetikan sesuatu pada TextField
    // debounce(count, (_) => print('Stop Typing'), time: Duration(seconds: 1));

    /// -- Mengabaikan setiap perubahan yang ada sesuai dengan durasi yang telah kita tentukan
    /// -- Jadi, apabila ada seseorang yang mencoba untuk mengklik sebuah tombol dalam satu waktu
    /// -- Perubahan akan diproses setiap lama durasi yang kita tentukan (interval)
    interval(count, (_) => print('Abaikan perubahan setiap 5 detik'),
        time: Duration(seconds: 5));

    super.onInit();
  }
}
