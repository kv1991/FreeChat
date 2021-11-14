import 'package:flutter/material.dart';
import 'package:free_chat/constants.dart';

class FilledOutlineButton extends StatelessWidget {
  final VoidCallback press;
  final String text;
  final bool isFilled;

  const FilledOutlineButton({
    Key? key,
    required this.press,
    required this.text,
    this.isFilled = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? kContentColorLightTheme : Colors.white,
          fontSize: 12
        )),
      elevation: isFilled ? 4 : 0,
      color: isFilled ? Colors.white : kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Colors.white)
      )
    );
  }
}