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
          decoration: const BoxDecoration(
            color: kPrimaryColor
          )
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(chat: chatsData[index], press: () {})
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
  final VoidCallback press;

  const ChatCard({
    Key? key,
    this.chat,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding * 0.75
        ),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chat!.image)
                ),
                if(chat!.isActive)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        width: 3
                      )
                    )
                  ),
                )
              ],
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
      ),
    );
  }
}