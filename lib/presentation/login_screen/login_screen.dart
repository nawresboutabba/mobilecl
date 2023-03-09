import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/core/utils/validation_functions.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_checkbox.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_text_form_field.dart';

class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          child: Container(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: AppDecoration.fillBlack900,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getVerticalSize(
                            40.00,
                          ),
                          width: size.width,
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: size.width,
                          padding: getPadding(
                            left: 38,
                            top: 10,
                            right: 38,
                            bottom: 10,
                          ),
                          decoration: AppDecoration.outlineBlack9004c.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    4.00,
                                  ),
                                  width: getHorizontalSize(
                                    30.00,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA7002b,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: Text(
                                  "lbl_login".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInriaSansBold16.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.16,
                                    ),
                                  ),
                                ),
                              ),
                              CustomTextFormField(
                                width: 299,
                                focusNode: FocusNode(),
                                controller: controller.emailController,
                                hintText: "lbl_jone_deper_one".tr,
                                margin: getMargin(
                                  top: 52,
                                ),
                                variant: TextFormFieldVariant.FillGray90001,
                                shape: TextFormFieldShape.RoundedBorder11,
                                padding: TextFormFieldPadding.PaddingT21,
                                fontStyle:
                                    TextFormFieldFontStyle.InriaSansRegular14,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress,
                                suffix: Container(
                                  margin: getMargin(
                                    left: 30,
                                    top: 16,
                                    right: 21,
                                    bottom: 16,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup12708,
                                    height: getSize(
                                      28.00,
                                    ),
                                    width: getSize(
                                      28.00,
                                    ),
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    60.00,
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                },
                              ),
                              Container(
                                margin: getMargin(
                                  top: 20,
                                ),
                                padding: getPadding(
                                  left: 17,
                                  top: 18,
                                  right: 17,
                                  bottom: 18,
                                ),
                                decoration:
                                    AppDecoration.fillGray90001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        24.00,
                                      ),
                                      width: getHorizontalSize(
                                        1.00,
                                      ),
                                      margin: getMargin(
                                        left: 3,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blue400,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 3,
                                        top: 3,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInriaSansRegular14,
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: getPadding(
                                        top: 5,
                                        bottom: 6,
                                      ),
                                      child: Text(
                                        "lbl_forgot".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInriaSansBold10
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Obx(
                                () => CustomCheckbox(
                                  text: "msg_auto_login_next".tr,
                                  iconSize: 12,
                                  value: controller.checkbox.value,
                                  padding: getPadding(
                                    left: 20,
                                    top: 31,
                                  ),
                                  onChange: (value) {
                                    controller.checkbox.value = value;
                                  },
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: getMargin(
                                    left: 82,
                                    top: 90,
                                    right: 81,
                                    bottom: 316,
                                  ),
                                  padding: getPadding(
                                    left: 18,
                                    top: 16,
                                    right: 18,
                                    bottom: 16,
                                  ),
                                  decoration: AppDecoration
                                      .gradientTealA400TealA40001
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder29,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_login".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInriaSansBold14WhiteA700,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                        margin: getMargin(
                                          left: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
