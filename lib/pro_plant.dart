class Plants {
  final String image;
  final String name;
  final String temp;
  final String ph;
  final String description;
  final String bnf;

  Plants({
    this.image,
    this.name,
    this.temp,
    this.ph,
    this.description,
    this.bnf,
  });
}

final List<Plants> plants = [
  Plants(
    image: 'images/plant0.png',
    name: 'Growing Basil',
    temp: '18-30 ° C',
    ph: '5-6.5',
    description:
        'Basil is one of the most popular herbs in aquaponics systems. Particularly in large commercial monoculture units given its high value and high demand in urban or peri-urban areas. Many basil growers have tried growing Italian basil, lemon basil, and purple basil in their aquaponic systems. Due to its high nitrogen content, basil is an ideal plant in aquaponics. However, care must be taken to avoid excessive depletion of nutrients from the water.',
    bnf:
        " *Plant spacing: 15-25 cm (8-40 plants / m2).\n*Germination time and temperature: 6-7 days with temperature of 20 to 25 ° C.\n*Growth time: 5-6 weeks (start harvesting when the plant is 15cm tall).\n*Exposure to light: Sunny or slightly sheltered.\n* Température: 18-30 ° C, optimale 20-25 ° C.\n*Plant height and width: 30-70 cm; 30 cm.",
  ),
  Plants(
    image: 'images/plant1.png',
    name: 'Growing Lettuce',
    temp: '5-22 ° C',
    ph: '0-7.0',
    description:
        'Lettuce grows particularly well in aquaponics because of the optimal nutrient concentrations in the water. Almost all varieties of lettuce can be grown in aquaponics.',
    bnf:
        "*Plant spacing: 18-30 cm (20-25 heads / m2).\n*Germination time and temperature: 3-7 days; 13 to 21 ° C.\n*Growth time: 24-32 days (longer for some varieties).\n*Light exposure: full sun (slight shade in warm temperatures).\n*Temperature: 15-22 ° C (flowering over 24 ° C).\n*Plant height and width: 20-30 cm; 25-35 cm.",
  ),
  Plants(
    image: 'images/plant2.png',
    name: 'Growing Peppers',
    temp: '14-16 ° C',
    ph: '5-6.5',
    description:
        'There are many varieties of peppers. But whether they\'re colorful for cooking or intended for hot sauce, they can all be grown in aquaponics. Peppers are more suited to the grow bed method but can also grow in 11cm diameter NFT tubes if given extra support with the help of a tutor, for example.',
    bnf:
        "*Plant spacing: 30-60 cm (3-4 plants / m2, or more for small varieties).\n*Germination time and temperature: 8-12 days; 22-30 ° C (seeds will not germinate below 13 ° C).\n* Temperature: 14-16 ° C at night, 22-30 ° C during the day.\n*Growth time: 60-95 days.\n*Light exposure: full sun.\n*Plant height and width: 30-90 cm; 30-80 cm.",
  ),
  Plants(
    image: 'images/plant3.png',
    name: 'Growing Tomatoes',
    temp: '13-16°C',
    ph: '5.5-6.5',
    description:
        "Tomatoes have excellent fruiting when grown in aquaponics, although physical support with stakes is necessary. Considering the high nutrient demand of tomatoes, especially potassium, the number of plants per system should be planned according to the biomass of the fish in order to avoid nutrient deficiencies. A high concentration of nitrogen is preferable in the early stages to promote vegetative growth in plants. However, potassium will need to be present from the flowering stage to promote fruiting in your tomatoes.",
    bnf:
        "*Plant spacing: 40-60 cm (3-5 plants / m2).\n*Germination time and temperature: 4-6 days; 20 to 30 ° C.\n*Growth time: 50-70 days until the first harvest; fruiting 90-120 days up to 8-10 months (Varieties unknown).\n* Optimal temperatures: 13-16 ° C at night, 22-26 ° C during the day.\n*Light exposure: full sun.\n*Plant height and width: 60-180 cm; 60-80 cm.",
  )
];
