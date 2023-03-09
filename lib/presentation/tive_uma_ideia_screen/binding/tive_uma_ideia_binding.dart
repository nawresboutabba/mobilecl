import '../controller/tive_uma_ideia_controller.dart';
import 'package:get/get.dart';

class TiveUmaIdeiaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TiveUmaIdeiaController());
  }
}
