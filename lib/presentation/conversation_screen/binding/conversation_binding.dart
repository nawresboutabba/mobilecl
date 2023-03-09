import '../controller/conversation_controller.dart';
import 'package:get/get.dart';

class ConversationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConversationController());
  }
}
