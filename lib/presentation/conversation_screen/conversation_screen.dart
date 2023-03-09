import '../conversation_screen/widgets/conversation_item_widget.dart';
import 'controller/conversation_controller.dart';
import 'models/conversation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:nawres_boutabba_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_floating_button.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_icon_button.dart';

class ConversationScreen extends GetWidget<ConversationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(21.00),
                    width: getSize(21.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 21, top: 18, bottom: 16),
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: Text("lbl_conversations".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMerriweatherRegular2496),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(4.00),
                      svgPath: ImageConstant.imgGroup12,
                      margin:
                          getMargin(left: 27, top: 19, right: 27, bottom: 16))
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
                    padding: getPadding(top: 20, bottom: 20),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(64.00),
                              width: getHorizontalSize(317.00),
                              margin: getMargin(top: 15),
                              decoration: AppDecoration.outlineBlue50,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            width: getHorizontalSize(317.00),
                                            padding: getPadding(
                                                left: 7,
                                                top: 4,
                                                right: 7,
                                                bottom: 4),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder29,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant
                                                            .imgGroup5),
                                                    fit: BoxFit.cover)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomIconButton(
                                                      height: 49,
                                                      width: 49,
                                                      padding: IconButtonPadding
                                                          .PaddingAll14,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSearch))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            width: getHorizontalSize(66.00),
                                            margin: getMargin(left: 77),
                                            child: Text(
                                                "lbl_search_a_friend".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterMedium1605)))
                                  ])),
                          Padding(
                              padding: getPadding(
                                  left: 21, top: 26, right: 13, bottom: 7),
                              child: Obx(() => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(28.00));
                                  },
                                  itemCount: controller.conversationModelObj
                                      .value.conversationItemList.length,
                                  itemBuilder: (context, index) {
                                    ConversationItemModel model = controller
                                        .conversationModelObj
                                        .value
                                        .conversationItemList[index];
                                    return ConversationItemWidget(model);
                                  })))
                        ]))),
            floatingActionButton: CustomFloatingButton(
                height: 59,
                width: 59,
                child: CustomImageView(
                    svgPath: ImageConstant.imgGroup220,
                    height: getVerticalSize(29.50),
                    width: getHorizontalSize(29.50)))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
