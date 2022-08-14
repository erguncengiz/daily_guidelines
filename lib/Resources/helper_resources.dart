import 'package:daily_guidelines/Resources/resources.dart';
import 'package:flutter/material.dart';

class ResourcesHelper extends Resources {
  // #region - Padding
  @override
  get12Padding() {
    return const EdgeInsets.all(12);
  }

  @override
  get18Padding() {
    return const EdgeInsets.all(12);
  }

  @override
  get20Padding() {
    return const EdgeInsets.all(12);
  }

  @override
  get20PaddingOnlyLeft() {
    return const EdgeInsets.only(left: 20);
  }

  @override
  get8Padding() {
    return const EdgeInsets.all(12);
  }
  // #endregion

  // #region - Sizes
  @override
  getCardHeight() {
    return 100.0;
  }
  // #endregion

  // #region - BorderRadius
  @override
  BorderRadius getCardBorderRadius() {
    return BorderRadius.circular(12.0);
  }

  @override
  BorderRadius getQuoteCardRadius() {
    return const BorderRadius.only(
      topRight: Radius.circular(12.0),
      bottomRight: Radius.circular(12.0),
    );
  }
  // #endregion

  // #region - Colors
  @override
  getThemeColor() {
    return Colors.orangeAccent;
  }

  @override
  Color nightColor() {
    return const Color(0xff1f005c);
  }

  @override
  Color sunColor() {
    return const Color(0xffe16b5c);
  }

  @override
  Color getAppBackGroundColor() {
    return const Color.fromARGB(255, 222, 217, 233);
  }
  // #endregion

  // #region - Gradients
  @override
  LinearGradient getSunriseGradient() {
    return const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(0.8, 1),
      colors: <Color>[
        Color(0xff1f005c),
        Color(0xff5b0060),
        Color(0xff870160),
        Color(0xffac255e),
        Color(0xffca485c),
        Color(0xffe16b5c),
        Color(0xfff39060),
        Color(0xffffb56b),
      ],
      tileMode: TileMode.mirror,
    );
  }
  // #endregion

  // #region TextStyles
  @override
  TextStyle boldStyle() {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  @override
  TextStyle headerStyle() {
    return const TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  @override
  TextStyle regularStyle() {
    return const TextStyle(fontSize: 18, color: Colors.black);
  }

  @override
  TextStyle subTitleStyle() {
    return TextStyle(
      fontSize: 14,
      color: Colors.grey.withAlpha(200),
    );
  }
  // #endregion

  // #region - BoxShadow
  @override
  BoxShadow getShadow(Color shadowColor) {
    return BoxShadow(
      color: shadowColor,
      spreadRadius: 1,
      blurRadius: 15,
      offset: const Offset(0, 3),
    );
  }

  @override
  BoxShadow getCircleShadow(Color shadowColor) {
    return BoxShadow(
      color: shadowColor,
      spreadRadius: 1,
      blurRadius: 6,
      offset: const Offset(0, 3),
    );
  }
  // #endregion
}
