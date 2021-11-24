import 'package:flutter/material.dart';
import 'package:free_chat/screens/messages/components/chat_input_field.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        ChatInputField()
      ]
    );
  }
}