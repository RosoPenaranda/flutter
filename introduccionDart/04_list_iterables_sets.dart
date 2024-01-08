void main() {
  final numbers = [1, 2, 3, 4, 5, 5,5, 6, 7, 8, 9, 10, 9, 8, 7];

  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('First ${numbers.first}');
  print('Reversed: ${numbers.reversed}');

  final revesedNumbers = numbers.reversed;
  print('Iterable $revesedNumbers');
  print('List: ${revesedNumbers.toList()}');
  print('Set: ${revesedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((number) => number > 5);

  print('> 5 Iterable $numbersGreaterThan5');
  print('> 5 Set ${numbersGreaterThan5.toSet()}');
}