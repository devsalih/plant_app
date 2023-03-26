import 'package:flutter/material.dart';

class PlantSliverAppBar extends StatelessWidget {
  const PlantSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      flexibleSpace: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 4),
                const Text(
                  "My Plants",
                  style: TextStyle(color: Color(0xFF3B7B68), fontSize: 38),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search by name or species",
                      hintStyle: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFFAEAEAE),
                      ),
                      suffixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                const Spacer(flex: 2),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset("assets/plant.png")],
          ),
        ],
      ),
      expandedHeight: 200,
      centerTitle: false,
      backgroundColor: const Color(0xFFDEF4D4).withOpacity(0.5),
      elevation: 0,
    );
  }
}
