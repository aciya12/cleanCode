import 'package:get/get.dart';

class CountingController extends GetxController {

  int count = 0;

  @override
  void onInit() {

    super.onInit();
  }

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }

  clearing() {
    count = 0;
    update();
  }
}
