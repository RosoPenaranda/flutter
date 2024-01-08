void main() {
// Asi se llama al constructor con parametros por posicion
//  final wolverine = new Hero('Logan', 'Regeneración');
 final wolverine = new Hero(name: 'Logan', power: 'Regeneración');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  // Constructor con parametros por posicion  
  //Hero(this.name, this.power);

  // Constructor con parametros por nombre
  Hero({
    required this.name, 
    this.power = 'No power'
  });

  // sobre escribe el metodo toString
  @override
  String toString() => 'Hero - name: $name - power: $power';
}
