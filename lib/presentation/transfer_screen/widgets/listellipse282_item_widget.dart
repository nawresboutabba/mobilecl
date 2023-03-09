import '../controller/transfer_controller.dart';
import '../models/listellipse282_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Listellipse282ItemWidget extends StatelessWidget {
  Listellipse282ItemWidget(this.listellipse282ItemModelObj);

  Listellipse282ItemModel listellipse282ItemModelObj;

  var controller = Get.find<TransferController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 25,
            bottom: 1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse282,
                height: getSize(
                  52.00,
                ),
                width: getSize(
                  52.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    26.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "lbl_catherine".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInriaSansRegular10.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
