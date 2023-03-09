import 'controller/warkthrough_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_button.dart';

class WarkthroughTwoScreen extends GetWidget<WarkthroughTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: size.height,
                          width: size.width,
                          decoration: AppDecoration.fillBlack900,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: getVerticalSize(40.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: size.width,
                                    padding: getPadding(
                                        left: 24,
                                        top: 10,
                                        right: 24,
                                        bottom: 10),
                                    decoration: AppDecoration.outlineBlack9004c
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL12),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(4.00),
                                              width: getHorizontalSize(30.00),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA7002b,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              2.00)))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(top: 18),
                                                  child: Text("lbl_skip".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInriaSansBold14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.14),
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage1,
                                              height: getVerticalSize(281.00),
                                              width: getHorizontalSize(168.00),
                                              margin: getMargin(top: 15)),
                                          Padding(
                                              padding: getPadding(top: 80),
                                              child: Text(
                                                  "msg_welcome_to_idea".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInriaSansBold16
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.16)))),
                                          CustomButton(
                                              width: 133,
                                              text: "lbl_get_s_started".tr,
                                              margin: getMargin(
                                                  top: 81, bottom: 173),
                                              variant: ButtonVariant
                                                  .GradientTealA400TealA40001,
                                              shape: ButtonShape.CircleBorder28,
                                              padding:
                                                  ButtonPadding.PaddingAll19,
                                              onTap: onTapGetsstarted)
                                        ])))
                          ]))
                    ]))));
  }

  onTapGetsstarted() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
