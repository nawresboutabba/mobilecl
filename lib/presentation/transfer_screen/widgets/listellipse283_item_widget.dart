import '../controller/transfer_controller.dart';
import '../models/listellipse283_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Listellipse283ItemWidget extends StatelessWidget {
  Listellipse283ItemWidget(this.listellipse283ItemModelObj);

  Listellipse283ItemModel listellipse283ItemModelObj;

  var controller = Get.find<TransferController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          61.00,
        ),
        width: getHorizontalSize(
          335.00,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse283,
              height: getSize(
                48.00,
              ),
              width: getSize(
                48.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  24.00,
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: getPadding(
                  left: 64,
                  top: 4,
                ),
                child: Text(
                  "lbl_guy_hawkins".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInriaSansBold14Black900,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 64,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgReply,
                            height: getSize(
                              16.00,
                            ),
                            width: getSize(
                              16.00,
                            ),
                            margin: getMargin(
                              top: 18,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                              top: 19,
                            ),
                            child: Text(
                              "lbl_603_555_0123".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInriaSansRegular12Gray40001
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.12,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgQuestion,
                            height: getSize(
                              24.00,
                            ),
                            width: getSize(
                              24.00,
                            ),
                            margin: getMargin(
                              bottom: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      319.00,
                    ),
                    margin: getMargin(
                      top: 13,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray10001,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
