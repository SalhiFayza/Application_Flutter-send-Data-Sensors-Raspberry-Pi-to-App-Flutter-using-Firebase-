class Fishes {
  final String imageUrl;
  final String name;

  final String temp;
  final String ph;
  final String description;
  final String bnf;

  Fishes({
    this.imageUrl,
    this.name,
    this.temp,
    this.ph,
    this.description,
    this.bnf,
  });
}

final List<Fishes> fishes = [
  Fishes(
    imageUrl: 'images/fish0.png',
    name: 'Tilapia',
    temp: '28°-30°C',
    ph: '6.4-8.7',
    description:
        'Tilapia is a delicious and flavorful edible fish that easily adapts to most environments.',
    bnf:
        '*Rapid growth rate.\n*Extremely robust.\n*They don\'t require a lot of oxygen.',
  ),
  Fishes(
    imageUrl: 'images/fish1.png',
    name: 'The Goldfish',
    temp: '10°-30°C',
    ph: '6-8',
    description:
        'Goldfish is a great choice as an aquaponics fish in case you don\'t plan to eat fish from your system, you can aim for ornamental fish. It is easy to maintain.',
    bnf:
        '*Very robust and tolerant to changes in pH.\n*to watch.\n*Not edible.',
  ),
  Fishes(
      imageUrl: 'images/fish2.png',
      name: 'Trout',
      temp: '6°-20°C',
      ph: '6.5-8',
      description:
          'Using Trout in your aquaponics system will be great because the growth rate is excellent.',
      bnf:
          '*Easy to maintain.\n*Tasty to eat.\n*Feed on a wide variety of options, including fish, insects and soft-bodied invertebrates.'),
];
