import 'package:advanced_flutter/theme/app_color.dart';
import 'package:advanced_flutter/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData regularTheme = ThemeData(
    colorScheme: ColorScheme.light().copyWith(
      primary: AppColors.mainColor,
      secondary: AppColors.yellow
    ),
    textTheme: TextTheme(
      headline1: AppTextStyle.headline1,
      headline2: AppTextStyle.headline2,
      headline3: AppTextStyle.headline3,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states){
          if(states.contains(MaterialState.disabled)){
            return AppColors.negative;
          }
          return AppColors.mainColor[800];
        }),
        minimumSize: MaterialStateProperty.all(Size(343, 56)),
        textStyle: MaterialStateProperty.all(AppTextStyle.headline3.copyWith(color: Colors.white)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      )
    )
  );
}