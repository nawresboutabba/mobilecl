import '../tive_uma_ideia_screen/widgets/tive_uma_ideia_item_widget.dart';
import 'controller/tive_uma_ideia_controller.dart';
import 'models/tive_uma_ideia_item_model.dart';
import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_button.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_icon_button.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_radio_button.dart';
import 'package:nawres_boutabba_s_application1/widgets/custom_text_form_field.dart';

class TiveUmaIdeiaScreen extends GetWidget<TiveUmaIdeiaController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                          padding: getPadding(
                              left: 21, top: 24, right: 21, bottom: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowleftDeepPurpleA700,
                                    height: getSize(22.00),
                                    width: getSize(22.00),
                                    margin: getMargin(left: 12),
                                    onTap: () {
                                      onTapImgArrowleft();
                                    }),
                                Container(
                                    height: getVerticalSize(30.00),
                                    width: getHorizontalSize(326.00),
                                    margin: getMargin(top: 3),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(306.00),
                                                  margin: getMargin(bottom: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray100))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 33,
                                                      top: 3,
                                                      bottom: 6),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            "lbl_tive_uma_ideia"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtNunitoRegular14),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 4,
                                                                bottom: 1),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "lbl_tipo"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(10),
                                                                              fontFamily: 'Nunito',
                                                                              fontWeight: FontWeight.w200)),
                                                                      TextSpan(
                                                                          text: "msg_produto_ou_servi_o"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(10),
                                                                              fontFamily: 'Nunito',
                                                                              fontWeight: FontWeight.w700,
                                                                              decoration: TextDecoration.underline))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left))
                                                      ]))),
                                          CustomIconButton(
                                              height: 30,
                                              width: 30,
                                              variant:
                                                  IconButtonVariant.FillGray800,
                                              shape: IconButtonShape
                                                  .CircleBorder15,
                                              padding:
                                                  IconButtonPadding.PaddingAll5,
                                              alignment: Alignment.centerLeft,
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup1))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 4, top: 16),
                                    child: Text("lbl_t_tulo_da_ideia".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5, top: 3),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                CustomTextFormField(
                                    width: 309,
                                    focusNode: FocusNode(),
                                    controller: controller.campoNomeController,
                                    hintText: "msg_insira_aqui_o_t_tulo".tr,
                                    margin: getMargin(left: 5, top: 11),
                                    padding: TextFormFieldPadding.PaddingAll7),
                                Padding(
                                    padding: getPadding(left: 6, top: 16),
                                    child: Text("lbl_equipe".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 6, top: 1),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                Padding(
                                    padding: getPadding(
                                        left: 70, top: 15, right: 154),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(24.00));
                                        },
                                        itemCount: controller
                                            .tiveUmaIdeiaModelObj
                                            .value
                                            .tiveUmaIdeiaItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          TiveUmaIdeiaItemModel model =
                                              controller
                                                  .tiveUmaIdeiaModelObj
                                                  .value
                                                  .tiveUmaIdeiaItemList[index];
                                          return TiveUmaIdeiaItemWidget(model);
                                        }))),
                                Padding(
                                    padding: getPadding(left: 115, top: 24),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse37,
                                          height: getSize(30.00),
                                          width: getSize(30.00),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(15.00))),
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 3, bottom: 4),
                                          child: Text("lbl_convidar".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSansRomanLight16))
                                    ])),
                                Padding(
                                    padding: getPadding(left: 4, top: 16),
                                    child: Text("lbl_tags_setor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5, top: 1),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                CustomTextFormField(
                                    width: 309,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.campoNomeOneController,
                                    hintText: "msg_digite_aqui_a_tag".tr,
                                    margin: getMargin(left: 5, top: 15),
                                    padding: TextFormFieldPadding.PaddingAll7),
                                Padding(
                                    padding: getPadding(left: 5, top: 16),
                                    child: Row(children: [
                                      Container(
                                          padding:
                                              getPadding(left: 8, right: 8),
                                          decoration: AppDecoration
                                              .outlineIndigo300
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_marketing".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNunitoRegular12)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(6.00),
                                                width: getSize(6.00),
                                                margin: getMargin(
                                                    left: 9, top: 7, bottom: 7))
                                          ])),
                                      Container(
                                          margin: getMargin(left: 8),
                                          padding:
                                              getPadding(left: 8, right: 8),
                                          decoration: AppDecoration
                                              .outlineIndigo300
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_design".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNunitoRegular12)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(6.00),
                                                width: getSize(6.00),
                                                margin: getMargin(
                                                    left: 8, top: 7, bottom: 7))
                                          ])),
                                      Container(
                                          margin: getMargin(left: 8),
                                          padding:
                                              getPadding(left: 8, right: 8),
                                          decoration: AppDecoration
                                              .outlineIndigo300
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_branding".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNunitoRegular12)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(6.00),
                                                width: getSize(6.00),
                                                margin: getMargin(
                                                    left: 8, top: 7, bottom: 7))
                                          ]))
                                    ])),
                                Padding(
                                    padding: getPadding(left: 4, top: 16),
                                    child: Text("msg_tags_palavras_chave".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5, top: 1),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                CustomTextFormField(
                                    width: 309,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.campoNomeTwoController,
                                    hintText: "msg_digite_aqui_a_tag".tr,
                                    margin: getMargin(left: 5, top: 15),
                                    padding: TextFormFieldPadding.PaddingAll7),
                                Padding(
                                    padding: getPadding(left: 5, top: 16),
                                    child: Row(children: [
                                      Container(
                                          padding:
                                              getPadding(left: 8, right: 8),
                                          decoration: AppDecoration
                                              .outlineIndigo300
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_marketing".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNunitoRegular12)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(6.00),
                                                width: getSize(6.00),
                                                margin: getMargin(
                                                    left: 9, top: 7, bottom: 7))
                                          ])),
                                      Container(
                                          margin: getMargin(left: 8),
                                          padding:
                                              getPadding(left: 8, right: 8),
                                          decoration: AppDecoration
                                              .outlineIndigo300
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_design".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNunitoRegular12)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(6.00),
                                                width: getSize(6.00),
                                                margin: getMargin(
                                                    left: 8, top: 7, bottom: 7))
                                          ])),
                                      Container(
                                          margin: getMargin(left: 8),
                                          padding:
                                              getPadding(left: 8, right: 8),
                                          decoration: AppDecoration
                                              .outlineIndigo300
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4),
                                          child: Row(children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_branding".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNunitoRegular12)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(6.00),
                                                width: getSize(6.00),
                                                margin: getMargin(
                                                    left: 8, top: 7, bottom: 7))
                                          ]))
                                    ])),
                                Container(
                                    width: getHorizontalSize(266.00),
                                    margin: getMargin(left: 5, top: 15),
                                    child: Text("msg_qual_problema_ou".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                Container(
                                    width: getHorizontalSize(309.00),
                                    margin: getMargin(left: 5, top: 15),
                                    padding: getPadding(
                                        left: 16,
                                        top: 11,
                                        right: 16,
                                        bottom: 11),
                                    decoration: AppDecoration
                                        .outlineBluegray90001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder4),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 66),
                                              child: Text(
                                                  "msg_digite_aqui_a_oportunidade"
                                                      .tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtOpenSans12))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 5, top: 16),
                                    child: Text("msg_qual_a_sua_ideia".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5, top: 3),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                Container(
                                    width: getHorizontalSize(309.00),
                                    margin: getMargin(left: 5, top: 15),
                                    padding: getPadding(
                                        left: 16,
                                        top: 11,
                                        right: 16,
                                        bottom: 11),
                                    decoration: AppDecoration
                                        .outlineBluegray90001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder4),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 66),
                                              child: Text(
                                                  "msg_digite_aqui_a_sua".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtOpenSans12))
                                        ])),
                                Container(
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 4, top: 16),
                                    child: Text("msg_o_que_ela_tem_de".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                Container(
                                    width: getHorizontalSize(309.00),
                                    margin: getMargin(left: 5, top: 15),
                                    padding: getPadding(
                                        left: 16,
                                        top: 11,
                                        right: 16,
                                        bottom: 11),
                                    decoration: AppDecoration
                                        .outlineBluegray90001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder4),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 65),
                                              child: Text(
                                                  "msg_digite_aqui_a_sua2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtOpenSans12))
                                        ])),
                                Container(
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5, top: 16),
                                    child: Text("msg_o_que_ela_tem_de".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 6),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                Padding(
                                    padding: getPadding(left: 30, top: 14),
                                    child: Obx(() => Column(children: [
                                          CustomRadioButton(
                                              text: "lbl_para_empresa".tr,
                                              iconSize: 16,
                                              value: controller
                                                  .tiveUmaIdeiaModelObj
                                                  .value
                                                  .radioList[0],
                                              groupValue:
                                                  controller.radioGroup.value,
                                              margin: getMargin(right: 10),
                                              fontStyle:
                                                  RadioFontStyle.NunitoBold16,
                                              onChange: (value) {
                                                controller.radioGroup.value =
                                                    value;
                                              }),
                                          CustomRadioButton(
                                              text: "lbl_para_o_mercado".tr,
                                              iconSize: 16,
                                              value: controller
                                                  .tiveUmaIdeiaModelObj
                                                  .value
                                                  .radioList[1],
                                              groupValue:
                                                  controller.radioGroup.value,
                                              margin: getMargin(top: 13),
                                              onChange: (value) {
                                                controller.radioGroup.value =
                                                    value;
                                              }),
                                          CustomRadioButton(
                                              text: "lbl_para_o_mundo".tr,
                                              iconSize: 16,
                                              value: controller
                                                  .tiveUmaIdeiaModelObj
                                                  .value
                                                  .radioList[2],
                                              groupValue:
                                                  controller.radioGroup.value,
                                              margin:
                                                  getMargin(top: 15, right: 12),
                                              onChange: (value) {
                                                controller.radioGroup.value =
                                                    value;
                                              })
                                        ]))),
                                Container(
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5, top: 16),
                                    child: Text("msg_o_que_ela_tem_de".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 6),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                Padding(
                                    padding: getPadding(left: 30, top: 13),
                                    child: Row(children: [
                                      CustomRadioButton(
                                          text: "lbl_sim".tr,
                                          iconSize: 16,
                                          value: "lbl_sim".tr,
                                          groupValue:
                                              controller.radioGroup1.value,
                                          fontStyle:
                                              RadioFontStyle.NunitoBold16,
                                          onChange: (value) {
                                            controller.radioGroup1.value =
                                                value;
                                          }),
                                      Padding(
                                          padding: getPadding(left: 16),
                                          child: CustomRadioButton(
                                              text: "lbl_n_o".tr,
                                              iconSize: 16,
                                              value: "lbl_n_o".tr,
                                              groupValue:
                                                  controller.radioGroup2.value,
                                              margin: getMargin(left: 16),
                                              onChange: (value) {
                                                controller.radioGroup2.value =
                                                    value;
                                              }))
                                    ])),
                                Padding(
                                    padding: getPadding(left: 30, top: 29),
                                    child: Text("msg_como_ela_foi_testada".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                CustomTextFormField(
                                    width: 277,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.campoNomeThreeController,
                                    hintText: "msg_digite_aqui_como".tr,
                                    margin: getMargin(left: 18, top: 8)),
                                Container(
                                    height: getVerticalSize(45.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 2, top: 15),
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(306.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueGray100))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(269.00),
                                                  child: Text(
                                                      "msg_quais_s_o_os_maiores"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular16)))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 3, top: 9),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              margin: getMargin(bottom: 38),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              12.00)))),
                                          CustomTextFormField(
                                              width: 277,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .campoNomeFourController,
                                              hintText:
                                                  "msg_digite_aqui_o_obstaculo"
                                                      .tr,
                                              margin: getMargin(left: 12))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 3, top: 16),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              margin: getMargin(bottom: 38),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              12.00)))),
                                          CustomTextFormField(
                                              width: 277,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .campoNomeFiveController,
                                              hintText:
                                                  "msg_digite_aqui_o_obstaculo"
                                                      .tr,
                                              margin: getMargin(left: 12))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 3, top: 16),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              margin: getMargin(bottom: 38),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              12.00)))),
                                          CustomTextFormField(
                                              width: 277,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .campoNomeSixController,
                                              hintText:
                                                  "msg_digite_aqui_o_obstaculo"
                                                      .tr,
                                              margin: getMargin(left: 12))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 5, top: 16),
                                    child: Text("msg_quais_impactos_ser_o".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5, top: 1),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                CustomTextFormField(
                                    width: 309,
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.campoNomeSevenController,
                                    hintText: "msg_selecione_um_impacto".tr,
                                    margin: getMargin(left: 5, top: 15),
                                    padding: TextFormFieldPadding.PaddingT7,
                                    textInputAction: TextInputAction.done,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 10,
                                            right: 16,
                                            bottom: 10),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCheckmark)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(36.00))),
                                Container(
                                    width: getHorizontalSize(287.00),
                                    margin: getMargin(left: 5, top: 16),
                                    child: Text("msg_quanto_tempo_levaria".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5, top: 1),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                Padding(
                                    padding: getPadding(left: 5, top: 14),
                                    child: Row(children: [
                                      Text("lbl_1_m_s".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtOpenSansRomanLight10),
                                      Padding(
                                          padding: getPadding(left: 50),
                                          child: Text("lbl_4_meses".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSansRomanLight10)),
                                      Padding(
                                          padding: getPadding(left: 50),
                                          child: Text("lbl_8_meses".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSansRomanLight10)),
                                      Padding(
                                          padding: getPadding(left: 50),
                                          child: Text("lbl_16_meses".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSansRomanLight10))
                                    ])),
                                Container(
                                    height: getVerticalSize(4.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 5, top: 3),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.black900,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(2.00)))),
                                Container(
                                    height: getVerticalSize(5.00),
                                    width: getHorizontalSize(3.00),
                                    margin: getMargin(left: 64),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray900,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(1.00)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgPolygon2,
                                    height: getVerticalSize(8.00),
                                    width: getHorizontalSize(9.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(1.00)),
                                    margin: getMargin(left: 61)),
                                Padding(
                                    padding: getPadding(left: 46),
                                    child: Text("lbl_3_meses".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtNunitoItalicRegular10)),
                                Container(
                                    width: getHorizontalSize(276.00),
                                    margin: getMargin(left: 6, top: 19),
                                    child: Text(
                                        "msg_quanto_recurso_financeiro".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 6),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                Padding(
                                    padding: getPadding(left: 30, top: 12),
                                    child: Obx(() => Column(children: [
                                          CustomRadioButton(
                                              text: "msg_n_o_ser_necess_rio".tr,
                                              iconSize: 16,
                                              value: controller
                                                  .tiveUmaIdeiaModelObj
                                                  .value
                                                  .radioList1[0],
                                              groupValue:
                                                  controller.radioGroup3.value,
                                              fontStyle:
                                                  RadioFontStyle.NunitoBold16,
                                              onChange: (value) {
                                                controller.radioGroup3.value =
                                                    value;
                                              }),
                                          CustomRadioButton(
                                              text: "lbl_10_mil".tr,
                                              iconSize: 16,
                                              value: controller
                                                  .tiveUmaIdeiaModelObj
                                                  .value
                                                  .radioList1[1],
                                              groupValue:
                                                  controller.radioGroup3.value,
                                              margin: getMargin(
                                                  top: 15, right: 103),
                                              onChange: (value) {
                                                controller.radioGroup3.value =
                                                    value;
                                              }),
                                          CustomRadioButton(
                                              text: "lbl_20_mil".tr,
                                              iconSize: 16,
                                              value: controller
                                                  .tiveUmaIdeiaModelObj
                                                  .value
                                                  .radioList1[2],
                                              groupValue:
                                                  controller.radioGroup3.value,
                                              margin: getMargin(
                                                  top: 15, right: 103),
                                              onChange: (value) {
                                                controller.radioGroup3.value =
                                                    value;
                                              }),
                                          CustomRadioButton(
                                              text: "lbl_mais_de_20_mil".tr,
                                              iconSize: 16,
                                              value: controller
                                                  .tiveUmaIdeiaModelObj
                                                  .value
                                                  .radioList1[3],
                                              groupValue:
                                                  controller.radioGroup3.value,
                                              margin:
                                                  getMargin(top: 15, right: 43),
                                              onChange: (value) {
                                                controller.radioGroup3.value =
                                                    value;
                                              })
                                        ]))),
                                Padding(
                                    padding: getPadding(left: 6, top: 16),
                                    child: Text("lbl_anexos".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular16)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(306.00),
                                    margin: getMargin(left: 6, top: 2),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blueGray100)),
                                Container(
                                    margin: getMargin(
                                        left: 95, top: 13, right: 198),
                                    padding: getPadding(
                                        left: 29, top: 1, right: 29, bottom: 1),
                                    decoration: AppDecoration.fillBluegray90003
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder4),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgUpload3,
                                              height: getSize(16.00),
                                              width: getSize(16.00),
                                              margin:
                                                  getMargin(top: 2, bottom: 2)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 8, top: 3, right: 1),
                                              child: Text("lbl_upload".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansLight12))
                                        ])),
                                CustomButton(
                                    width: 96,
                                    text: "lbl_salvar".tr,
                                    margin: getMargin(left: 27, top: 29),
                                    onTap: onTapSalvar)
                              ]))))
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapSalvar() {
    Get.toNamed(AppRoutes.accueilScreen);
  }
}
