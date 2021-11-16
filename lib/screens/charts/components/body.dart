import 'package:flutter/material.dart';
import 'package:free_chat/components/filled_outline_button.dart';
import 'package:free_chat/constants.dart';
import 'package:free_chat/models/chat_data.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          child: Row(
            children: [
              FilledOutlineButton(
                text: 'Recent Message',
                press: () {}
              ),
              const SizedBox(width: kDefaultPadding),
              FilledOutlineButton(
                text: 'Active',
                press: () {},
                isFilled: false
              )
            ],
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor
          )
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(chat: chatsData[index])
          ),
          // child: Column(
          //   children: [
          //     ...List.generate(chatsData.length, (index) => ChatCard()),
          //   ]
          // )
        )
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  final Chat? chat;

  const ChatCard({
    Key? key,
    this.chat
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding * 0.75
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(chat!.image)
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat!.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                    )
                  ),
                  const SizedBox(height: 8),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      chat!.lastMessage,
                      maxLines: 1,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                      )
                    ),
                  )
                ]
              ),
            ),
          ),
          Text(chat!.time)
        ]
      ),
    );
  }
}