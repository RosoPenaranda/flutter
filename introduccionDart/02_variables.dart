void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  // by default dynamic == null
  dynamic errorMessage = "Error";
  errorMessage = true;
  errorMessage = 100;
  errorMessage = {1, 2, 3};
  errorMessage = [1, 2, 3];
  errorMessage = () => true;
  errorMessage = null;
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
