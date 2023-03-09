import 'controller/scan_qr_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nawres_boutabba_s_application1/core/app_export.dart';

class ScanQrCodeScreen extends GetWidget<ScanQrCodeController> {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftGray900,
                          height: getSize(22.00),
                          width: getSize(22.00),
                          margin: getMargin(left: 20, top: 11),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(500.00),
                              width: getHorizontalSize(335.00),
                              margin: getMargin(top: 21),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle692,
                                    height: getVerticalSize(500.00),
                                    width: getHorizontalSize(335.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(28.00)),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width: getHorizontalSize(335.00),
                                        padding: getPadding(
                                            left: 20,
                                            top: 30,
                                            right: 20,
                                            bottom: 30),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup15),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Spacer(),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgGroup12733,
                                                  height: getSize(187.00),
                                                  width: getSize(187.00),
                                                  alignment: Alignment.center),
                                              Padding(
                                                  padding: getPadding(top: 98),
                                                  child: Text("lbl_scaning".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInriaSansBold14WhiteA700)),
                                              Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(5.00),
                                                      width: getHorizontalSize(
                                                          295.00),
                                                      child: ClipRRect(
                                                          child:
                                                              LinearProgressIndicator(
                                                                  value: 0))))
                                            ])))
                              ]))),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 30),
                          padding: getPadding(
                              left: 138, top: 20, right: 138, bottom: 20),
                          decoration: AppDecoration.outlineBlack9004c.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(96.00),
                                    margin: getMargin(left: 3, bottom: 28),
                                    padding: getPadding(
                                        left: 28,
                                        top: 23,
                                        right: 28,
                                        bottom: 23),
                                    decoration: AppDecoration
                                        .gradientTealA400TealA40001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCar,
                                              height: getSize(40.00),
                                              width: getSize(40.00)),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Text("lbl_qr".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInriaSansBold14WhiteA700))
                                        ]))
                              ]))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
