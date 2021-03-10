import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service extends GetxService {
  Future<void> incrementCounter() async {
    /// -- Sharedpreferences digunakan untuk menyimpan value
    /// -- Berapa banyak atau berapa kali fungsi incrementcounter telah dipanggil
    SharedPreferences preferences = await SharedPreferences.getInstance();

    /// -- counter akan mengambil nilai dari preferences
    /// -- counter akan bertambah nilai apabila value dari preferences bertambah
    int counter = (preferences.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');

    /// -- preferences akan menunggu value dari counter
    await preferences.setInt('counter', counter);
  }
}
