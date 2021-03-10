import 'package:flutter_getx/05%20getx_statemanagement/getx_statemanagement_controller/controller_student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {

  /// -- Individual obs
  var student = Student();

  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }

  /// -- Entire class obs
  /// -- Uncomment [4]
  // var student = Student(name: "Tom", age: 25).obs;

  // void convertUpperCase() {
  //   student.update((student) {
  //     student.name = student.name.toString().toUpperCase();
  //   });
  // }
}
