import '../controller/warkthrough_two_controller.dart';
import 'package:get/get.dart';

class WarkthroughTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WarkthroughTwoController());
  }
}
