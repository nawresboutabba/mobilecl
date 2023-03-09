import 'package:get/get.dart';
import 'tive_uma_ideia_item_model.dart';

class TiveUmaIdeiaModel {
  RxList<TiveUmaIdeiaItemModel> tiveUmaIdeiaItemList =
      RxList.filled(2, TiveUmaIdeiaItemModel());

  List<String> radioList = [
    "lbl_para_empresa",
    "lbl_para_o_mercado",
    "lbl_para_o_mundo"
  ];

  List<String> radioList1 = [
    "msg_n_o_ser_necess_rio",
    "lbl_10_mil",
    "lbl_20_mil",
    "lbl_mais_de_20_mil"
  ];
}
