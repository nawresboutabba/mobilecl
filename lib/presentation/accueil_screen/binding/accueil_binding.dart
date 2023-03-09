import '../controller/accueil_controller.dart';
import 'package:get/get.dart';

class AccueilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccueilController());
  }
}
