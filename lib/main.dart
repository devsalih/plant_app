import 'package:flutter/material.dart';

import 'my_plants_page/my_plants_page.dart';
import 'plant.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Pages page = Pages.plant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFDEF4D4),
      body: Stack(
        children: [
          if (page == Pages.home) const Center(child: Text("ANASAYFA")),
          if (page == Pages.profile) const Center(child: Text("PROFİL")),
          if (page == Pages.plant) MyPlantsPage(plants: Plant.examples),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(60),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF94D3A5).withOpacity(0.4),
                    blurRadius: 30,
                    offset: const Offset(0, -3),
                  ),
                ],
              ),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavigationItem(
                    icon: Icons.home,
                    isActive: page == Pages.home,
                    navigate: () => setState(() => page = Pages.home),
                  ),
                  NavigationItem(
                    icon: Icons.local_florist,
                    isActive: page == Pages.plant,
                    navigate: () => setState(() => page = Pages.plant),
                  ),
                  NavigationItem(
                    icon: Icons.person,
                    isActive: page == Pages.profile,
                    navigate: () => setState(() => page = Pages.profile),
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

enum Pages { home, plant, profile }

class NavigationItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final void Function()? navigate;

  const NavigationItem({
    Key? key,
    required this.icon,
    required this.isActive,
    this.navigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: navigate,
          child: Icon(
            icon,
            size: 30,
            color: isActive ? const Color(0xFF60A993) : Colors.grey,
            shadows: [
              if (isActive)
                const Shadow(color: Color(0xFF60A993), blurRadius: 10),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4),
          width: 4,
          height: 4,
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFF60A993) : Colors.transparent,
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              if (isActive)
                const BoxShadow(
                  color: Color(0xFF60A993),
                  blurRadius: 4,
                  spreadRadius: 1,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
