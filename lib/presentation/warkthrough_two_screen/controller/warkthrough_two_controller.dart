import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/presentation/warkthrough_two_screen/models/warkthrough_two_model.dart';

class WarkthroughTwoController extends GetxController {
  Rx<WarkthroughTwoModel> warkthroughTwoModelObj = WarkthroughTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.loginScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
