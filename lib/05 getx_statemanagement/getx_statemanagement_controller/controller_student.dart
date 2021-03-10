import 'package:get/get.dart';

class Student {

  /// -- Individual variable Rx
  /// -- var name dan var age di awasi, tinjau atau observasi oleh 'Get'
  var name = "Tom".obs;
  var age = 25.obs;

  /// -- Entire class observable
  /// -- Uncomment [3]
  // var name;
  // var age;
  // Student({this.name, this.age});
}
