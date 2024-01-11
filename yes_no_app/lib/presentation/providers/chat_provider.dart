import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/messsage.dart';

class ChatProvider extends ChangeNotifier {
//coloca una lista de 20 mensajes respetando el formato de la clase

  List<Message> message = [
    Message(text: 'Hola', fromWho: FromWho.mine),
    Message(text: 'Hola', fromWho: FromWho.hers),
    Message(text: 'que haces?', fromWho: FromWho.mine),
    Message(text: 'nada', fromWho: FromWho.hers),
    Message(text: 'y tu?', fromWho: FromWho.hers),
    Message(text: 'nada', fromWho: FromWho.mine),
    Message(text: 'vamos al cine?', fromWho: FromWho.mine),
    Message(text: 'claro', fromWho: FromWho.hers),
    Message(text: 'a que hora?', fromWho: FromWho.hers),
    Message(text: 'a las 8', fromWho: FromWho.mine),
    Message(text: 'ok', fromWho: FromWho.hers),
  ];
}
