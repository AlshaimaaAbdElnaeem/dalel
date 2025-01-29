import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyle {
  static final textStyle64 = TextStyle(
    fontSize: 64.sp,
    // fontWeight: FontWeight.bold,
    fontFamily: "Pacifico",
    color: AppColors.deebBrown,
  );
  static final textStyle24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );
  static final textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
  );
  static final textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textColorWhite,
  );
  static final textStyle12 = TextStyle(
    fontSize: 12.sp,
    color: AppColors.textColorBrown,
  );
}
