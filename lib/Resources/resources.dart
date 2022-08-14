import 'package:flutter/material.dart';

abstract class Resources {
  // Color
  Color getThemeColor();
  Color nightColor();
  Color getAppBackGroundColor();
  Color sunColor();

  // Gradients
  LinearGradient getSunriseGradient();

  // Sizes
  double getCardHeight();

  // BorderRadius
  BorderRadius getCardBorderRadius();
  BorderRadius getQuoteCardRadius();

  // Padding
  EdgeInsets get8Padding();
  EdgeInsets get12Padding();
  EdgeInsets get18Padding();
  EdgeInsets get20Padding();

  EdgeInsets get20PaddingOnlyLeft();

  // TextStyles
  TextStyle regularStyle();
  TextStyle boldStyle();
  TextStyle headerStyle();
  TextStyle subTitleStyle();

  // BoxShadow
  BoxShadow getShadow(Color shadowColor);
  BoxShadow getCircleShadow(Color shadowColor);
}
