void main() {
  print(greetEveryone());

  print('Suma: ${addTwoNumbers(1, 2)}');

  print('Suma 2: ${addTwoNumbers2(1, 2)}');

  print(greetPerson(name: "Roso", message: "Hi"));
}

String greetEveryone() {
  return 'Hello everyone!';
}

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbers2(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int? b]) {
  // b??=0;  Si b es null, entonces b = 0
  b = b ?? 0;
  return a + b;
}

int addTwoNumbersOptionalDefault(int a, [int b = 0]) {
  return a + b;
}

// los parametros entre llaves son opcionales
String greetPerson({required String name, String message = 'Hello,'}) {
  return '$message $name';
}
