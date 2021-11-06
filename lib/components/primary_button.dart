import 'package:flutter/material.dart';
import 'package:free_chat/constants.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback press;
  final String text;
  final Color color;

  const PrimaryButton({
    Key? key,
    required this.press,
    required this.text,
    this.color = kPrimaryColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.75),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          color: color
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white)
          ),
      )
    );
  }
}