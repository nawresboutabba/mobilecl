import '../controller/conversation_controller.dart';
import '../models/conversation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ConversationItemWidget extends StatelessWidget {
  ConversationItemWidget(this.conversationItemModelObj);

  ConversationItemModel conversationItemModelObj;

  var controller = Get.find<ConversationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse12,
              height: getSize(
                49.00,
              ),
              width: getSize(
                49.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  24.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 21,
                top: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_mike_goldberg".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium1605Bluegray700,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "msg_it_s_a_sunny_day".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium1605Bluegray700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgClock,
          height: getSize(
            15.00,
          ),
          width: getSize(
            15.00,
          ),
          margin: getMargin(
            top: 16,
            bottom: 17,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 9,
            top: 17,
            bottom: 15,
          ),
          child: Text(
            "lbl_4_min_ago".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular107,
          ),
        ),
      ],
    );
  }
}
