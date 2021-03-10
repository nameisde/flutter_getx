import 'package:flutter/material.dart';
import 'package:flutter_getx/06%20getx_controller_lifecycle_method/controller_lifecycle_method_controller.dart';
import 'package:get/get.dart';

class GetXControllerLifecycleMethod extends StatefulWidget {
  
  @override
  _GetXControllerLifecycleMethodState createState() => _GetXControllerLifecycleMethodState();
}

class _GetXControllerLifecycleMethodState extends State<GetXControllerLifecycleMethod> {
  /// -- Get myController dari file controller
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Statemanagement Lifecycle Method'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              /// -- Penulisan yang lebih baik daripada menggunakan
              /// -- initState dan dispose diddalam GetBuilder
              /// -- Maka, pendekatan yang lebih baik adalah
              /// -- Membuat sebuah fungsi baru pada controller
              /// -- Untuk menghandle itu semua
              /// 
              /// -- Comment atau Uncomment syntax initState dan dispose
              // initState: (data) => myController.increment(),
              // dispose: (_) => myController.cleanUpTask(),
              builder: (controller) {
                return Text(
                  'The value is ${controller.count}',
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
