void main() {
  print('Inicio del programa');

  httpGet('http://penaranda.dev').then((value) {
    print(value);
  })
  .catchError((onError) {
    print('Error: $onError');
  });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 1), () {
    throw 'No se pudo conectar';
    //return 'Repuesta del servidor';
  });
}
