class Plant {
  final String name, location, category, sunlight, image;
  final int water;

  Plant({
    required this.name,
    required this.water,
    required this.location,
    required this.category,
    required this.sunlight,
    required this.image,
  });

  static List<Plant> examples = [
    Plant(
      name: "dracaena trifasciata",
      water: 3,
      location: "(in bedrooms windowsill)",
      category: "indoor",
      sunlight: "moderate",
      image: "assets/plant1.png",
    ),
    Plant(
      name: "monstera deliciosa",
      water: 3,
      location: "(on dining room table)",
      category: "indoor",
      sunlight: "moderate",
      image: "assets/plant2.png",
    ),
    Plant(
      name: "sansevieria cylindrica",
      water: 3,
      location: "(in kitchen windowsill)",
      category: "indoor",
      sunlight: "low light",
      image: "assets/plant3.png",
    ),
    Plant(
      name: "aloe vera",
      water: 3,
      location: "(on balcony railing)",
      category: "indoor",
      sunlight: "low light",
      image: "assets/plant4.png",
    ),
  ];
}