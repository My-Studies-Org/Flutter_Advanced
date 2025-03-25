import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizeExtension on num {
  /// Sized box with width only
  Widget get widthBox => SizedBox(width: w);

  /// Sized box with height only
  Widget get heightBox => SizedBox(height: ScreenUtil().setHeight(this is int ? toDouble() : this));
}

extension BuildContextExtensions on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;
}
