import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxInt count = 0.obs;

  void increment() {
    count.value++;
  }

  void increment2() {
    
    count.value > 0 ? count.value-- : null;

    // if (count.value > 0) {
    //   count.value--;
    // }
  }
}
