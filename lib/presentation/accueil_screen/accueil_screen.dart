import 'controller/accueil_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:nawres_boutabba_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_bottom_bar.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_floating_button.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_icon_button.dart';

class AccueilScreen extends GetWidget<AccueilController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          height: getVerticalSize(
            55.00,
          ),
          title: Padding(
            padding: getPadding(
              left: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      right: 45,
                    ),
                    child: Text(
                      "lbl_hello".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMerriweatherRegular16,
                    ),
                  ),
                ),
                AppbarTitle(
                  text: "lbl_pamela".tr,
                  margin: getMargin(
                    left: 1,
                    top: 2,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            CustomIconButton(
              height: 40,
              width: 40,
              margin: getMargin(
                left: 32,
                top: 10,
                right: 32,
                bottom: 4,
              ),
              variant: IconButtonVariant.OutlineDeeporange50,
              shape: IconButtonShape.CircleBorder20,
              child: CustomImageView(
                svgPath: ImageConstant.imgSearchBlue100,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: getPadding(
            top: 55,
            bottom: 84,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                0,
              ),
              end: Alignment(
                0.5,
                1,
              ),
              colors: [
                ColorConstant.lightBlue50,
                ColorConstant.whiteA700,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 20,
                top: 29,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_today_s_ideas".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMerriweatherRegular1244,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      top: 12,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DottedBorder(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                1.00,
                              ),
                              top: getVerticalSize(
                                1.00,
                              ),
                              right: getHorizontalSize(
                                1.00,
                              ),
                              bottom: getVerticalSize(
                                1.00,
                              ),
                            ),
                            strokeWidth: getHorizontalSize(
                              1.00,
                            ),
                            radius: Radius.circular(
                              24,
                            ),
                            borderType: BorderType.RRect,
                            dashPattern: [
                              1.7777777910232544,
                              2.6666667461395264,
                            ],
                            child: CustomIconButton(
                              height: 48,
                              width: 48,
                              variant: IconButtonVariant.Outline,
                              child: CustomImageView(
                                svgPath: ImageConstant.imgPlus,
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 14,
                            ),
                            color: ColorConstant.gray100,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder24,
                            ),
                            child: Container(
                              height: getSize(
                                48.00,
                              ),
                              width: getSize(
                                48.00,
                              ),
                              padding: getPadding(
                                all: 2,
                              ),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder24,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse412,
                                    height: getSize(
                                      42.00,
                                    ),
                                    width: getSize(
                                      42.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        21.00,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 14,
                            ),
                            color: ColorConstant.gray100,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder24,
                            ),
                            child: Container(
                              height: getSize(
                                48.00,
                              ),
                              width: getSize(
                                48.00,
                              ),
                              padding: getPadding(
                                all: 2,
                              ),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder24,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse41242x42,
                                    height: getSize(
                                      42.00,
                                    ),
                                    width: getSize(
                                      42.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        21.00,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 14,
                            ),
                            color: ColorConstant.gray100,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder24,
                            ),
                            child: Container(
                              height: getSize(
                                48.00,
                              ),
                              width: getSize(
                                48.00,
                              ),
                              padding: getPadding(
                                all: 2,
                              ),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder24,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse4121,
                                    height: getSize(
                                      42.00,
                                    ),
                                    width: getSize(
                                      42.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        21.00,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 14,
                            ),
                            color: ColorConstant.gray100,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder24,
                            ),
                            child: Container(
                              height: getSize(
                                48.00,
                              ),
                              width: getSize(
                                48.00,
                              ),
                              padding: getPadding(
                                all: 2,
                              ),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder24,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse4122,
                                    height: getSize(
                                      42.00,
                                    ),
                                    width: getSize(
                                      42.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        21.00,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(
                              left: 14,
                            ),
                            color: ColorConstant.gray100,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder24,
                            ),
                            child: Container(
                              height: getSize(
                                48.00,
                              ),
                              width: getSize(
                                48.00,
                              ),
                              padding: getPadding(
                                all: 2,
                              ),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder24,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse4123,
                                    height: getSize(
                                      42.00,
                                    ),
                                    width: getSize(
                                      42.00,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        21.00,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      264.00,
                    ),
                    width: getHorizontalSize(
                      337.00,
                    ),
                    margin: getMargin(
                      left: 1,
                      top: 39,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: getHorizontalSize(
                              328.00,
                            ),
                            margin: getMargin(
                              left: 9,
                              top: 141,
                            ),
                            padding: getPadding(
                              left: 19,
                              right: 19,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup78,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 62,
                                    top: 61,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_jesica_fariya".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16,
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          36.00,
                                        ),
                                        child: Text(
                                          "lbl_1_hour_ago".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium1244,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgGroup12,
                                  height: getVerticalSize(
                                    20.00,
                                  ),
                                  width: getHorizontalSize(
                                    4.00,
                                  ),
                                  margin: getMargin(
                                    top: 69,
                                    bottom: 33,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: getHorizontalSize(
                              328.00,
                            ),
                            margin: getMargin(
                              right: 9,
                            ),
                            padding: getPadding(
                              left: 40,
                              top: 7,
                              right: 40,
                              bottom: 7,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup8,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 9,
                                    top: 18,
                                  ),
                                  child: Text(
                                    "msg_new_business_idea".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMerriweatherRegular1244WhiteA700,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: getSize(
                                    19.00,
                                  ),
                                  width: getSize(
                                    19.00,
                                  ),
                                  alignment: Alignment.centerRight,
                                  margin: getMargin(
                                    top: 169,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse14,
                          height: getSize(
                            42.00,
                          ),
                          width: getSize(
                            42.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              21.00,
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                          margin: getMargin(
                            left: 31,
                            bottom: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      260.00,
                    ),
                    width: getHorizontalSize(
                      328.00,
                    ),
                    margin: getMargin(
                      top: 13,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: getHorizontalSize(
                              328.00,
                            ),
                            margin: getMargin(
                              top: 137,
                            ),
                            padding: getPadding(
                              left: 19,
                              right: 19,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup78,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Spacer(
                                  flex: 37,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 59,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_runa_laila".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16,
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          36.00,
                                        ),
                                        margin: getMargin(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_1_hour_ago".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterMedium1244,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(
                                  flex: 62,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgFavorite,
                                  height: getSize(
                                    19.00,
                                  ),
                                  width: getSize(
                                    19.00,
                                  ),
                                  margin: getMargin(
                                    top: 82,
                                    bottom: 20,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgGroup12,
                                  height: getVerticalSize(
                                    20.00,
                                  ),
                                  width: getHorizontalSize(
                                    4.00,
                                  ),
                                  margin: getMargin(
                                    left: 15,
                                    top: 69,
                                    bottom: 33,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: getHorizontalSize(
                              328.00,
                            ),
                            padding: getPadding(
                              left: 56,
                              top: 12,
                              right: 56,
                              bottom: 12,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup10,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 177,
                                  ),
                                  child: Text(
                                    "msg_new_business_idea2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMerriweatherRegular1244WhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse1442x42,
                          height: getSize(
                            42.00,
                          ),
                          width: getSize(
                            42.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              21.00,
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                          margin: getMargin(
                            left: 21,
                            bottom: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
        floatingActionButton: CustomFloatingButton(
          height: 56,
          width: 56,
          child: CustomImageView(
            svgPath: ImageConstant.imgGroup202,
            height: getVerticalSize(
              28.00,
            ),
            width: getHorizontalSize(
              28.00,
            ),
          ),
        ),
      ),
    );
  }
}
