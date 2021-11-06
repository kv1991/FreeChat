import 'package:flutter/material.dart';
import 'package:free_chat/components/primary_button.dart';
import 'package:free_chat/constants.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset(
                'assets/images/Logo_light.png',
                height: 146,
              ),
              const Spacer(),
              PrimaryButton(
                text: 'Sign In',
                press: () {}
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                text: 'Sign Up',
                press: () {},
                color: Theme.of(context).colorScheme.secondary
              ),
              const Spacer(flex: 2),
            ]
          )
        )
      )
    );
  }
}