import 'package:flutter/material.dart';
import 'package:free_chat/constants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          MaterialButton(
            onPressed: () {},
            child: Text('Recent Message'),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor
      )
    );
  }
}