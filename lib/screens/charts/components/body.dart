import 'package:flutter/material.dart';
import 'package:free_chat/components/filled_outline_button.dart';
import 'package:free_chat/constants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}