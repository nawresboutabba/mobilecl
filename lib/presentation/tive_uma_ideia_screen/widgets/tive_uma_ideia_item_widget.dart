import '../controller/tive_uma_ideia_controller.dart';
import '../models/tive_uma_ideia_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TiveUmaIdeiaItemWidget extends StatelessWidget {
  TiveUmaIdeiaItemWidget(this.tiveUmaIdeiaItemModelObj);

  TiveUmaIdeiaItemModel tiveUmaIdeiaItemModelObj;

  var controller = Get.find<TiveUmaIdeiaController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse35,
          height: getSize(
            60.00,
          ),
          width: getSize(
            60.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              30.00,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 14,
            top: 1,
            bottom: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_joana_silva".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOpenSans16,
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 1,
                ),
                child: Text(
                  "lbl_designer_ui_ux".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSansRomanLight12,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                ),
                child: Text(
                  "lbl_esta_voc".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSansRomanLight12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
