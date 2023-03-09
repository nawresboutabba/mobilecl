import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/presentation/accueil_screen/models/accueil_model.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_bottom_bar.dart';

class AccueilController extends GetxController {
  Rx<AccueilModel> accueilModelObj = AccueilModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
