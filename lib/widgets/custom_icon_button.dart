import 'package:flutter/material.dart';
import 'package:nawres_boutabba_s_application1/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case IconButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      default:
        return getPadding(
          all: 11,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineDeeporange50:
        return ColorConstant.whiteA700;
      case IconButtonVariant.Outline:
        return ColorConstant.gray100;
      case IconButtonVariant.FillGray800:
        return ColorConstant.gray800;
      case IconButtonVariant.GradientPurpleA20099BlueA40099:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.OutlineDeeporange50:
      case IconButtonVariant.Outline:
      case IconButtonVariant.FillGray800:
        return null;
      default:
        return LinearGradient(
          begin: Alignment(
            -0.38,
            -0.57,
          ),
          end: Alignment(
            1.17,
            1.8,
          ),
          colors: [
            ColorConstant.purpleA20099,
            ColorConstant.blueA40099,
          ],
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineDeeporange50:
        return [
          BoxShadow(
            color: ColorConstant.deepOrange50,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              8.89,
            ),
          )
        ];
      case IconButtonVariant.GradientPurpleA20099BlueA40099:
      case IconButtonVariant.Outline:
      case IconButtonVariant.FillGray800:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder24,
  CircleBorder20,
  CircleBorder15,
}

enum IconButtonPadding {
  PaddingAll14,
  PaddingAll11,
  PaddingAll5,
}

enum IconButtonVariant {
  GradientPurpleA20099BlueA40099,
  OutlineDeeporange50,
  Outline,
  FillGray800,
}
