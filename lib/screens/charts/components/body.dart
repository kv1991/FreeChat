import 'package:flutter/material.dart';
import 'package:free_chat/components/chat_card.dart';
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