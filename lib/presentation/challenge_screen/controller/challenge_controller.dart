import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/presentation/challenge_screen/models/challenge_model.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_bottom_bar.dart';

class ChallengeController extends GetxController {
  Rx<ChallengeModel> challengeModelObj = ChallengeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
