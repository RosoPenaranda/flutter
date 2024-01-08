void main() async {
  print('Inicio del programa');

  try {
    final data = await httpGet('http://penaranda.dev');
    print('exito: $data');
  } on Exception catch (e){
    print('Tenemos un error: $e ');
  } catch (e) {
    print('OOPS! algo salio mal : $e');
  } finally {
    print('Fin del try y catch');
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(new Duration(seconds: 1));

  //throw Exception('No hay parametros en url');
    throw 'No se pudo conectar';
  // return 'Repuesta del servidor';
}
