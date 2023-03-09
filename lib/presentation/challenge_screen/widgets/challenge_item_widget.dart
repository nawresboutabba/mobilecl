import '../controller/challenge_controller.dart';
import '../models/challenge_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_button.dart';

// ignore: must_be_immutable
class ChallengeItemWidget extends StatelessWidget {
  ChallengeItemWidget(this.challengeItemModelObj);

  ChallengeItemModel challengeItemModelObj;

  var controller = Get.find<ChallengeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        273.00,
      ),
      width: getHorizontalSize(
        349.00,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: getHorizontalSize(
                339.00,
              ),
              margin: getMargin(
                left: 10,
              ),
              padding: getPadding(
                left: 85,
                top: 1,
                right: 85,
                bottom: 1,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup78,
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
                      top: 61,
                    ),
                    child: Text(
                      "lbl_jesica_fariya".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular1657,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      38.00,
                    ),
                    child: Text(
                      "lbl_1_hour_ago".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium1288,
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
                339.00,
              ),
              margin: getMargin(
                right: 10,
              ),
              padding: getPadding(
                left: 30,
                top: 41,
                right: 30,
                bottom: 41,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup17,
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
                      bottom: 125,
                    ),
                    child: Text(
                      "lbl_challenge_1".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMerriweatherRegular1288,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse14,
            height: getSize(
              44.00,
            ),
            width: getSize(
              44.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                22.00,
              ),
            ),
            alignment: Alignment.bottomLeft,
            margin: getMargin(
              left: 32,
              bottom: 23,
            ),
          ),
          CustomButton(
            width: 96,
            text: "lbl_participate".tr,
            margin: getMargin(
              right: 14,
              bottom: 23,
            ),
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
