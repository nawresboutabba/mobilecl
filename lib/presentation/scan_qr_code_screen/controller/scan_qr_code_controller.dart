import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/presentation/scan_qr_code_screen/models/scan_qr_code_model.dart';

class ScanQrCodeController extends GetxController {
  Rx<ScanQrCodeModel> scanQrCodeModelObj = ScanQrCodeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
