import 'package:daily_guidelines/Resources/global_parameters.dart';
import 'package:flutter/material.dart';

import '../../widgets/daily_card.dart';
import '../../widgets/radar_widget.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: resourcesHelper.getAppBackGroundColor(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("APP LOGO COMES HERE!"),
        backgroundColor: resourcesHelper.sunColor(),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: resourcesHelper.get12Padding(),
            child: DailyCard.media(
              temporaryImageLink,
              "Movies App",
              "EYC the Coder",
              Colors.orangeAccent,
            ),
          ),
          Padding(
            padding: resourcesHelper.get12Padding(),
            child: DailyCard.media(
              temporaryImageLink,
              "Movies App",
              "EYC the Coder",
              Colors.purpleAccent,
            ),
          ),
          Padding(
            padding: resourcesHelper.get12Padding(),
            child: DailyCard.quote(
              temporaryMotivationImageLink,
              "MOTIVATION",
              "Winners are who never give up!",
              Colors.green,
            ),
          ),
          const RadarCard(),
        ],
      )),
    );
  }
}
