import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/presentation/tive_uma_ideia_screen/models/tive_uma_ideia_model.dart';
import 'package:flutter/material.dart';

class TiveUmaIdeiaController extends GetxController {
  TextEditingController campoNomeController = TextEditingController();

  TextEditingController campoNomeOneController = TextEditingController();

  TextEditingController campoNomeTwoController = TextEditingController();

  TextEditingController campoNomeThreeController = TextEditingController();

  TextEditingController campoNomeFourController = TextEditingController();

  TextEditingController campoNomeFiveController = TextEditingController();

  TextEditingController campoNomeSixController = TextEditingController();

  TextEditingController campoNomeSevenController = TextEditingController();

  Rx<TiveUmaIdeiaModel> tiveUmaIdeiaModelObj = TiveUmaIdeiaModel().obs;

  RxString radioGroup = "".obs;

  RxString radioGroup1 = "".obs;

  RxString radioGroup2 = "".obs;

  RxString radioGroup3 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    campoNomeController.dispose();
    campoNomeOneController.dispose();
    campoNomeTwoController.dispose();
    campoNomeThreeController.dispose();
    campoNomeFourController.dispose();
    campoNomeFiveController.dispose();
    campoNomeSixController.dispose();
    campoNomeSevenController.dispose();
  }
}
