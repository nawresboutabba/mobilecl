import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/presentation/conversation_screen/models/conversation_model.dart';

class ConversationController extends GetxController {
  Rx<ConversationModel> conversationModelObj = ConversationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
