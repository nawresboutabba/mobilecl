import '../controller/scan_qr_code_controller.dart';
import 'package:get/get.dart';

class ScanQrCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanQrCodeController());
  }
}
