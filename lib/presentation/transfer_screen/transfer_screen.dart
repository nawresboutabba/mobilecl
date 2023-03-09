import '../transfer_screen/widgets/listellipse282_item_widget.dart';
import '../transfer_screen/widgets/listellipse283_item_widget.dart';
import 'controller/transfer_controller.dart';
import 'models/listellipse282_item_model.dart';
import 'models/listellipse283_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:nawres_boutabba_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_search_view.dart';

class TransferScreen extends GetWidget<TransferController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(44.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(22.00),
                    width: getSize(22.00),
                    svgPath: ImageConstant.imgArrowleftGray900,
                    margin: getMargin(left: 20, top: 11, bottom: 11),
                    onTap: onTapArrowleft2),
                actions: [
                  AppbarImage(
                      height: getSize(22.00),
                      width: getSize(22.00),
                      svgPath: ImageConstant.imgGrid,
                      margin:
                          getMargin(left: 20, top: 11, right: 20, bottom: 11))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: size.width,
                padding: getPadding(top: 20, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 20),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Container(
                                        padding: getPadding(
                                            left: 14,
                                            top: 10,
                                            right: 14,
                                            bottom: 10),
                                        decoration: AppDecoration
                                            .outlineDeeppurpleA2007f
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgCall,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00)),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("lbl_mobile".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInriaSansBold11))
                                            ])),
                                    GestureDetector(
                                        onTap: () {
                                          onTapColumnticket();
                                        },
                                        child: Container(
                                            margin: getMargin(left: 18),
                                            padding: getPadding(
                                                left: 9,
                                                top: 7,
                                                right: 9,
                                                bottom: 7),
                                            decoration: AppDecoration
                                                .outlineGray80014
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgTicket,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00),
                                                      alignment:
                                                          Alignment.center,
                                                      margin:
                                                          getMargin(top: 2)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Text(
                                                          "lbl_qr_code".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInriaSansRegular12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.12))))
                                                ]))),
                                    Container(
                                        margin: getMargin(left: 18),
                                        padding: getPadding(
                                            left: 17,
                                            top: 8,
                                            right: 17,
                                            bottom: 8),
                                        decoration: AppDecoration
                                            .outlineGray80014
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFile,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  alignment: Alignment.center,
                                                  margin: getMargin(top: 1)),
                                              Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Text("lbl_ideas2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInriaSansRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12))))
                                            ])),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgComputer,
                                        height: getVerticalSize(41.00),
                                        width: getHorizontalSize(49.00),
                                        margin: getMargin(
                                            left: 24, top: 13, bottom: 9)),
                                    Container(
                                        margin: getMargin(left: 25),
                                        padding: getPadding(
                                            left: 20,
                                            top: 7,
                                            right: 20,
                                            bottom: 7),
                                        decoration: AppDecoration
                                            .outlineGray80014
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMenu,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  margin: getMargin(top: 2)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, top: 7),
                                                  child: Text("lbl_es".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtInriaSansRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12))))
                                            ]))
                                  ])))),
                      Padding(
                          padding: getPadding(left: 20, top: 33),
                          child: Text("lbl_recent".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInriaSansBold14Gray900)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(88.00),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 20, top: 13),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(25.00));
                                  },
                                  itemCount: controller.transferModelObj.value
                                      .listellipse282ItemList.length,
                                  itemBuilder: (context, index) {
                                    Listellipse282ItemModel model = controller
                                        .transferModelObj
                                        .value
                                        .listellipse282ItemList[index];
                                    return Listellipse282ItemWidget(model);
                                  })))),
                      Padding(
                          padding: getPadding(left: 20, top: 47),
                          child: Text("lbl_contact".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInriaSansBold14Gray900)),
                      CustomSearchView(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: controller.fieldsController,
                          hintText: "lbl_search_here".tr,
                          margin: getMargin(top: 17),
                          alignment: Alignment.center,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 16, right: 8, bottom: 16),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgSearch24x24,
                                  height: getSize(24.00),
                                  width: getSize(24.00))),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(56.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 24, right: 20),
                              child: Obx(() => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16.00));
                                  },
                                  itemCount: controller.transferModelObj.value
                                      .listellipse283ItemList.length,
                                  itemBuilder: (context, index) {
                                    Listellipse283ItemModel model = controller
                                        .transferModelObj
                                        .value
                                        .listellipse283ItemList[index];
                                    return Listellipse283ItemWidget(model);
                                  }))))
                    ]))));
  }

  onTapColumnticket() {
    Get.toNamed(AppRoutes.scanQrCodeScreen);
  }

  onTapArrowleft2() {
    Get.back();
  }
}
