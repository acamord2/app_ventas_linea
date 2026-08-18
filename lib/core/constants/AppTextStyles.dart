
import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {

  static final String fontFamily = 'Roboto';

  static final TextStyle title = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static final TextStyle body = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    height: 1.4,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static final TextStyle bodyBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    height: 1.4,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static final TextStyle label = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    height: 1.3,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static final TextStyle labelBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    height: 1.3,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static final TextStyle button = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: AppColors.buttonContent,
  );

  static final TextStyle navbar = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    height: 1.2,
    fontWeight: FontWeight.w400,
    color: AppColors.navbarUnselectedContent,
  );

  static final TextStyle navbarSelected = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    height: 1.2,
    fontWeight: FontWeight.w500,
    color: AppColors.navbarSelectedContent,
  );
  static final TextStyle subtitle = TextStyle(
  fontFamily: fontFamily,
  fontSize: 18,
  height: 1.3,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimary,
);
}