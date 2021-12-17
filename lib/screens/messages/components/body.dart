import 'package:flutter/material.dart';
import 'package:free_chat/constants.dart';
import 'package:free_chat/models/chat_message.dart';
import 'package:free_chat/screens/messages/components/chat_input_field.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(message: demeChatMessages[index])
            ),
          )
        ),
        const ChatInputField()
      ]
    );
  }
}

class Message extends StatelessWidget {
  final ChatMessage message;
  const Message({ Key? key, required this.message }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75,
            vertical: kDefaultPadding * 0.5 
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: message.isSender ? kPrimaryColor : kPrimaryColor.withOpacity(0.08)
          ),
          child: Text(
            message.text,
            style: TextStyle(
              color: message.isSender ? Colors.white : Theme.of(context).textTheme.bodyText1?.color
            )
          )
        ),
      ],
    );
  }
}