import 'package:flutter/material.dart';

import '../plant.dart';
import '../water_container.dart';
import 'plant_requirements.dart';

class PlantPage extends StatelessWidget {
  final Plant plant;

  const PlantPage({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Color(0xFF8B8B8B)),
          iconSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_outline, color: Color(0xFFD40000)),
            iconSize: 30,
          ),
        ],
      ),
      body: Stack(
        children: [
          PlantRequirements(plant: plant),
          CustomPaint(painter: CustomPathPainter(), child: Container()),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WaterContainer(day: plant.water),
                      Transform.scale(
                        scale: 1.5,
                        origin: const Offset(0, 200),
                        child: Image.asset(plant.image, width: 100),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Text(
                    plant.name,
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    plant.location,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFFD4D4D4),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 32),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 84,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          "Water",
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF518F66),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;
    canvas.drawPath(
      Path()
        ..moveTo(0, h)
        ..lineTo(w, h)
        ..lineTo(w, h - 300)
        ..quadraticBezierTo(w * 0.75, h - 250, w * 0.5, h - 300)
        ..quadraticBezierTo(w * 0.25, h - 350, 0, h - 300),
      Paint()..color = const Color(0xFF518F66),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
