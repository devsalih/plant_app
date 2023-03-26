import 'package:flutter/material.dart';

class WaterContainer extends StatelessWidget {
  final int day;

  const WaterContainer({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFDBEEFF),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          const Icon(
            Icons.water_drop_outlined,
            color: Color(0xFF5987BA),
            size: 20,
          ),
          Text(
            " in $day days",
            style: const TextStyle(fontSize: 13, color: Color(0xFF5987BA)),
          ),
        ],
      ),
    );
  }
}
