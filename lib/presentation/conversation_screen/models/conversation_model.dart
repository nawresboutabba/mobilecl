import 'package:get/get.dart';
import 'conversation_item_model.dart';

class ConversationModel {
  RxList<ConversationItemModel> conversationItemList =
      RxList.filled(7, ConversationItemModel());
}
