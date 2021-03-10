import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXRouteNamedHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Route Named Home'),
      ),
      body: Center(
        child: Text(
          'Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}',
        ),
      ),
    );
  }
}
