import 'package:flutter/material.dart';

import '../../../../../Resources/global_parameters.dart';

class DailyCard extends StatefulWidget {
  final Widget? contentWidget;

  const DailyCard({
    Key? key,
    this.contentWidget,
  }) : super(key: key);

  @override
  State<DailyCard> createState() => _DailyCardState();

  factory DailyCard.media(
    String imageLink,
    String title,
    String subtitle,
    Color shadowColor,
  ) {
    Widget widget = Container(
      height: resourcesHelper.getCardHeight(),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: resourcesHelper.getCardBorderRadius(),
          boxShadow: [resourcesHelper.getShadow(shadowColor)]),
      child: Row(
        children: [
          Padding(
            padding: resourcesHelper.get8Padding(),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [resourcesHelper.getCircleShadow(shadowColor)]),
              child: CircleAvatar(
                backgroundImage: NetworkImage(imageLink),
                radius: resourcesHelper.getCardHeight() / 2,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: resourcesHelper.regularStyle(),
              ),
              Text(
                subtitle,
                style: resourcesHelper.subTitleStyle(),
              )
            ],
          ),
        ],
      ),
    );
    return DailyCard(contentWidget: widget);
  }

  factory DailyCard.quote(
    String imageLink,
    String title,
    String description,
    Color boxColor,
  ) {
    Widget widget = Material(
      elevation: 20,
      color: Colors.transparent,
      child: Container(
        height: resourcesHelper.getCardHeight(),
        decoration: BoxDecoration(
          gradient: resourcesHelper.getSunriseGradient(),
          borderRadius: resourcesHelper.getQuoteCardRadius(),
        ),
        child: Row(
          children: [
            Padding(
              padding: resourcesHelper.get8Padding(),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(imageLink),
                  radius: resourcesHelper.getCardHeight() / 2,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: resourcesHelper.headerStyle(),
                ),
                Text(
                  description,
                  style: resourcesHelper.subTitleStyle().copyWith(
                        color: Colors.white,
                      ),
                )
              ],
            ),
            Padding(
              padding: resourcesHelper.get20PaddingOnlyLeft(),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
    return DailyCard(contentWidget: widget);
  }
}

class _DailyCardState extends State<DailyCard> {
  @override
  Widget build(BuildContext context) {
    return widget.contentWidget ?? const SizedBox();
  }
}
