import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          // localazation 
          width: Get.width * .3,
          height: Get.height * .2,
          child: Text(
            // .tr for the translations 
            'HomeView is working'.tr,
            style: TextStyle(fontSize: Get.width * .04),
          ),
        ),
      ),
    );
  }
}
