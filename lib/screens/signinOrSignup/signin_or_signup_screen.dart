import 'package:flutter/material.dart';
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
              MaterialButton(
                onPressed: () {},
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.75),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: kPrimaryColor,
                  ),
                  child: const Text(
                    'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)
                    ),
                )
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.75),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    color: Theme.of(context).colorScheme.secondary
                  ),
                  child: const Text(
                    'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)
                    ),
                )
              ),
              const Spacer(flex: 2),
            ]
          )
        )
      )
    );
  }
}