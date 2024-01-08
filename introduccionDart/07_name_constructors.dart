void main() {

  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true,
  };

  final ironMan = Hero.fromJson(rawJson);

  // final ironMan = Hero(
  //   name: 'Tony Stark',
  //   power: 'Money',
  //   isAlive: rawJson['isAlive'] ?? false,
  // );

  print(ironMan);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  // Named constructor
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name',
      power = json['power'] ?? 'No power',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() => 'Hero - name: $name - power: $power - isAlive: ${isAlive ? 'Yes' : 'No'}';
}
