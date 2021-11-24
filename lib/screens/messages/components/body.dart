import 'package:flutter/material.dart';
import 'package:free_chat/constants.dart';
import 'package:free_chat/constants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2,
            vertical: kDefaultPadding
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [BoxShadow(color: const Color(0xFF087949).withOpacity(0.18), offset: Offset(0, 4), blurRadius: 32)]
          ),
          child: SafeArea(
            child: Row(
              children: [
                const Icon(Icons.mic, color: kPrimaryColor),
                const SizedBox(width: kDefaultPadding / 4),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.sentiment_satisfied_alt_outlined,
                          color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64),
                        ),
                        const SizedBox(width: kDefaultPadding / 4),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Type message',
                              border: InputBorder.none,
                            )
                          ),
                        ),
                        Icon(
                          Icons.attach_file_outlined,
                          color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64),
                        ),
                        const SizedBox(width: kDefaultPadding / 4),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64),
                        )
                      ],
                    )
                  )
                )
              ]
            ),
          ),
        )
      ]
    );
  }
}