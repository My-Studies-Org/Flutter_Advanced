import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/extensions/size_extensions.dart';
import 'package:flutter_advanced/core/theming/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final Widget? icon;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderSide? side;
  final double? width;
  final double? height;
  final double? separatorWidth;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final Color? decorationColor;
  final bool isUnderline;
  final Color disabledBackgroundColor;
  final bool isIconAfter;
  final bool wrapWithContainer;
  final Widget? child;
  final Gradient? gradient;

  const AppButton({
    required this.title,
    required this.onPressed,
    this.icon,
    this.radius = 16,
    this.padding,
    this.margin,
    this.textDecoration,
    this.backgroundColor,
    this.decorationColor,
    this.isIconAfter = false,
    this.disabledBackgroundColor = AppColors.gray,
    this.foregroundColor,
    this.side,
    this.width,
    this.separatorWidth,
    this.height,
    this.isUnderline = false,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.wrapWithContainer = false,
    super.key,
    this.child,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          wrapWithContainer
              ? EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h)
              : null,
      margin: margin,
      height: wrapWithContainer ? 80.h : height,
      width: width,
      decoration:
          !wrapWithContainer
              ? null
              : const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: AppColors.gray)),
              ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primary,
          foregroundColor: foregroundColor ?? Colors.white,
          backgroundBuilder: (context, state, child) {
            return Container(
              decoration: BoxDecoration(gradient: gradient),
              child: child,
            );
          },
          padding:
              wrapWithContainer
                  ? EdgeInsets.zero
                  : padding ??
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius.r),
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          disabledBackgroundColor: disabledBackgroundColor,
          disabledForegroundColor: Colors.white,
          side: side,
        ),
        child:
            child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              textDirection:
                  isIconAfter ? TextDirection.rtl : TextDirection.ltr,
              children: [
                icon ?? Container(),
                if (icon != null) (separatorWidth ?? 12).widthBox,
                Text(
                  title,
                  style: TextStyle(
                    color: foregroundColor ?? Colors.white,
                    fontWeight: fontWeight ?? FontWeightHelper.medium,
                    fontSize: fontSize ?? 16.sp,
                    decoration: textDecoration,
                    decorationColor: decorationColor,
                    shadows: [
                      if (isUnderline)
                        Shadow(
                          color: foregroundColor ?? Colors.white,
                          offset: const Offset(0, -2),
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
