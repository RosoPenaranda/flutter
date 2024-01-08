void main() {
  final windPlant = WindPlant(energyLeft: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Energy left: ${windPlant.energyLeft}');

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  double consumeEnergy({required double amount}) {
    return energyLeft -= (amount * 0.5);
  }
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw 'Not enough energy';
  }

  return plant.consumeEnergy(amount: 10);
}

enum PlantType {
  wind,
  solar,
  hydro,
  nuclear,
  coal,
  gas,
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  double consumeEnergy({required double amount}) {
    throw UnimplementedError();
  }
}

class WindPlant extends EnergyPlant {
  WindPlant({required double energyLeft})
      : super(energyLeft: energyLeft, type: PlantType.wind);

  @override
  double consumeEnergy({required double amount}) {
    return energyLeft -= amount;
  }
}
