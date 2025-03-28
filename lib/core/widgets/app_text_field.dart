import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  final TextInputAction action;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool readOnly;
  final bool autoFocus;
  final Color? fillColor;
  final Color? enabledBorderColor;
  final List<TextInputFormatter>? inputFormatters;
  final int? minLines;
  final int? maxLines;
  final double radius;
  final EdgeInsetsGeometry? contentPadding;
  final FocusNode? focusNode;
  final String? errorKey;
  final Map<String, dynamic>? errors;

  const AppTextField({
    super.key,
    required this.hint,
    this.hintStyle,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.action = TextInputAction.next,
    this.obscureText = false,
    this.readOnly = false,
    this.autoFocus = false,
    this.fillColor,
    this.enabledBorderColor,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.errorKey,
    this.inputFormatters,
    this.errors,
    this.minLines,
    this.maxLines = 1,
    this.radius = 16,
    this.contentPadding,
    this.onTap,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      onTap: onTap,
      keyboardType: keyboardType,
      textInputAction: action,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: AppColors.text,
      style: TextStyles.font14TextMedium,
      readOnly: readOnly,
      autofocus: autoFocus,
      inputFormatters: inputFormatters,
      minLines: minLines,
      maxLines: maxLines,
      focusNode: focusNode,
      decoration: InputDecoration(
        isDense: true,
        hintText: hint,
        filled: true,
        fillColor: fillColor ?? AppColors.grayFDFDFF,
        hintStyle: hintStyle ?? TextStyles.font14GrayC2C2C2Regular,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        errorText: errorKey,
        errorStyle: TextStyles.font10RedMedium,
        errorMaxLines: 2,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 1.3.w),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enabledBorderColor ?? AppColors.grayEDEDED,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.3.w),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3.w),
          borderRadius: BorderRadius.circular(radius.r),
        ),
      ),
    );
  }
}
