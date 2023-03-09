import '../challenge_screen/widgets/challenge_item_widget.dart';
import 'controller/challenge_controller.dart';
import 'models/challenge_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_bottom_bar.dart';

class ChallengeScreen extends GetWidget<ChallengeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(bottom: 62),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.lightBlue50,
                      ColorConstant.whiteA700
                    ])),
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 15, right: 31),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath:
                                      ImageConstant.imgArrowleftDeepPurpleA700,
                                  height: getSize(22.00),
                                  width: getSize(22.00),
                                  margin: getMargin(left: 9),
                                  onTap: () {
                                    onTapImgArrowleft();
                                  }),
                              Padding(
                                  padding: getPadding(top: 70),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(24.00));
                                      },
                                      itemCount: controller.challengeModelObj
                                          .value.challengeItemList.length,
                                      itemBuilder: (context, index) {
                                        ChallengeItemModel model = controller
                                            .challengeModelObj
                                            .value
                                            .challengeItemList[index];
                                        return ChallengeItemWidget(model);
                                      }))),
                              CustomImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: getSize(20.00),
                                  width: getSize(20.00),
                                  alignment: Alignment.centerRight,
                                  margin: getMargin(top: 84, right: 29))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
