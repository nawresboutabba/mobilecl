import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/presentation/transfer_screen/models/transfer_model.dart';
import 'package:flutter/material.dart';

class TransferController extends GetxController {
  TextEditingController fieldsController = TextEditingController();

  Rx<TransferModel> transferModelObj = TransferModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fieldsController.dispose();
  }
}
