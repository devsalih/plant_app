import 'package:flutter/material.dart';

import '../plant.dart';
import '../plant_page/plant_page.dart';
import '../water_container.dart';

class PlantRow extends StatelessWidget {
  final Plant plant;

  const PlantRow({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PlantPage(plant: plant);
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plant.name,
                  style: const TextStyle(
                    fontSize: 19,
                    color: Color(0xFF3C7E69),
                  ),
                ),
                Text(
                  plant.location,
                  style: const TextStyle(fontSize: 9, color: Color(0xFF909090)),
                ),
                const SizedBox(height: 24),
                WaterContainer(day: plant.water),
              ],
            ),
            const Spacer(),
            Image.asset(plant.image, height: 100)
          ],
        ),
      ),
    );
  }
}
