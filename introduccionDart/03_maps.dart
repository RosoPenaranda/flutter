void main() {
  final Map pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{
      1: 'ditto/front.png', 
      2: 'ditto/back.png'
    },
    'errorMessage': "Error",
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');

  // esto porque en un principio no defini pokemon como un map y por ello es 
  // necesario tratar a pokemo['sprites'] como un map explicitamente 
  // final spritesMap = pokemon['sprites'] as Map<int, String>;

  // print('Back sprite: ${spritesMap[2]}');
  // print('Front sprite: ${spritesMap[1]}');


  print('Back sprite: ${pokemon['sprites'][2]}');
  print('Front sprite: ${pokemon['sprites'][1]}');
}
