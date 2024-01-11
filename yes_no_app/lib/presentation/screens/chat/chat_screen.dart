import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgest/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgest/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgest/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.elespectador.com/resizer/ETk1A6FnKLLPq9zJI2KIPe1e-8k=/910x606/filters:quality(70):format(jpeg)/cloudfront-us-east-1.images.arcpublishing.com/elespectador/ZU7IJII2BNG3DERYS3JCUIHXYE.jpg"),
            ),
          ),
          title: const Text('Mi amor ❤️'),
          centerTitle: false,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const HerMessageBubble()
                          : const MyMessageBubble();
                    })),
            // caja de texto
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
