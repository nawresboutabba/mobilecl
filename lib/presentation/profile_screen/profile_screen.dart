import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:nawres_boutabba_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nawres_boutabba_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_text_form_field.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(21.00),
                    width: getSize(21.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 21, top: 19, bottom: 15),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(4.00),
                      svgPath: ImageConstant.imgGroup12,
                      margin:
                          getMargin(left: 26, top: 20, right: 26, bottom: 15))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(top: 56),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.lightBlue50,
                      ColorConstant.whiteA700
                    ])),
                child: Container(
                    padding:
                        getPadding(left: 94, top: 12, right: 94, bottom: 12),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse11111x111,
                              height: getSize(111.00),
                              width: getSize(111.00),
                              radius: BorderRadius.circular(
                                  getHorizontalSize(55.00)),
                              alignment: Alignment.center),
                          Container(
                              height: getVerticalSize(45.00),
                              width: getHorizontalSize(128.00),
                              margin: getMargin(left: 20, top: 7),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(left: 3),
                                            child: Text("lbl_pamela_alex".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold1778))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("msg_financial_engineer".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular1422))
                                  ])),
                          Padding(
                              padding: getPadding(top: 12, right: 23),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_challenges".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium1422),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 18, top: 2),
                                                  child: Text("lbl_20".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold16))
                                            ])),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_ideas".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium1422),
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, right: 6),
                                              child: Text("lbl_23".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold16))
                                        ])
                                  ])),
                          CustomTextFormField(
                              width: 128,
                              focusNode: FocusNode(),
                              controller: controller.groupFiftySevenController,
                              hintText: "lbl_edit_profile".tr,
                              margin: getMargin(top: 51, bottom: 5),
                              variant: TextFormFieldVariant
                                  .GradientPurpleA20099BlueA40099,
                              padding: TextFormFieldPadding.PaddingT7,
                              fontStyle:
                                  TextFormFieldFontStyle.PoppinsSemiBold1244,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 20, top: 8, right: 10, bottom: 7),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgEdit)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(31.00)))
                        ])))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
