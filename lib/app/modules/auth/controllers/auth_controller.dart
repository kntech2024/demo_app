import 'dart:developer';

import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {

  String name = "Lono Sihalath";

  

  @override
  void onInit() {
    print('object');
    debugPrint("Object");
    log('Object');
    super.onInit();
  }
}
