import 'package:flutter/material.dart';
import 'package:radar_chart/radar_chart.dart';

import '../../../../../Resources/global_parameters.dart';

class RadarCard extends StatelessWidget {
  const RadarCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: resourcesHelper.get8Padding(),
          child: RadarChart(
            length: 5,
            radius: 100,
            initialAngle: 0.96,
            // backgroundColor: Colors.white,
            borderStroke: 2,
            borderColor: Colors.black.withOpacity(0.4),
            radialStroke: 2,
            radialColor: Colors.grey,
            radars: [
              RadarTile(
                values: const [0.3, 0.1, 0.8, 0.5, 0.8],
                borderStroke: 2,
                borderColor: Colors.orange,
                backgroundColor: Colors.black.withOpacity(0.2),
              ),
              RadarTile(
                values: const [0.6, 0.3, 0.8, 0.2, 0.8],
                borderStroke: 2,
                borderColor: Colors.blue,
                backgroundColor: Colors.blue.withOpacity(0.4),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              "Mood",
              style: resourcesHelper.headerStyle(),
            ),
            Padding(
              padding: resourcesHelper.get20Padding(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Your intelligent +1"),
                  Text("Your strength +1"),
                  Text("Your desire +1"),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
