import 'package:get/get.dart';

class Student {

  /// -- var name dan var age di awasi, tinjau atau observasi oleh 'Get'
  /// -- Individual variable Rx
  var name = "Tom".obs;
  var age = 25.obs;

  /// -- Entire class observable
  /// -- Uncomment : 4
  // var name;
  // var age;
  // Student({this.name, this.age});
}
