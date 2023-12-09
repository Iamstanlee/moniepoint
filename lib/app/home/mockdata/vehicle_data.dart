class Vehicle {
  final String name, info, imageUrl;

  const Vehicle({
    required this.name,
    required this.info,
    this.imageUrl = 'res/images/truck.png',
  });
}

const listOfVehicles = <Vehicle>[
  Vehicle(
    name: 'Ocean Freight',
    info: 'International',
  ),
  Vehicle(
    name: 'Air Freight',
    info: 'International, Fast, Reliable',
  ),
  Vehicle(
    name: 'Truck Freight',
    info: 'Local',
  ),
  Vehicle(
    name: 'Cargo Freight',
    info: 'International, Fast, Reliable',
  ),
];
