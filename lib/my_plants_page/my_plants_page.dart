import 'package:flutter/material.dart';
import 'package:plant/my_plants_page/plant_sliver_app_bar.dart';

import '../plant.dart';
import 'plant_row.dart';

class MyPlantsPage extends StatelessWidget {
  final List<Plant> plants;

  const MyPlantsPage({Key? key, required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDEF4D4),
      body: CustomScrollView(
        slivers: [
          const PlantSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 100),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => PlantRow(plant: plants[index % plants.length]),
                childCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
