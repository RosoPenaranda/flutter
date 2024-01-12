import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

  // aunque esta respuesta es valida es una mala practica ya que genera dependencia con API
  // es mejor hacer un mapper y luego mapear a la entidad
    // return Message(
    //   text: response.data['answer'],
    //   fromWho: FromWho.hers,
    //   imageUrl: response.data['image'],
    // );

  final  yesNoModel = YesNoModel.fromJsonMap(response.data);
  return yesNoModel.toMessageEntity();
    
  }


}
