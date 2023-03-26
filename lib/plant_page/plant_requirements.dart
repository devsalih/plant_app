import 'package:flutter/material.dart';

import '../plant.dart';
import 'plant_requirements_row.dart';

class PlantRequirements extends StatelessWidget {
  final Plant plant;

  const PlantRequirements({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlantRequirementsRow(
          icon: Icons.curtains,
          title: "Category",
          body: plant.category,
        ),
        PlantRequirementsRow(
          icon: Icons.water_drop,
          title: "Water",
          body: "every ${plant.water} days",
        ),
        PlantRequirementsRow(
          icon: Icons.sunny,
          title: "Sunlight",
          body: plant.sunlight,
        ),
      ],
    );
  }
}
