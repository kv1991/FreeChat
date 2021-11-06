import 'package:flutter/material.dart';
import 'package:free_chat/screens/signinOrSignup/signin_or_signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Image.asset('assets/images/welcome_image.png'),
            const Spacer(flex: 3),
            Text(
              'Welcome to our freedom messaging app',
              style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Text(
              'Freedom talk any person of your \nmother language.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1?.color?.withOpacity(0.64)
              )
            ),
            const Spacer(flex: 3),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninOrSignupScreen())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Skip', style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.8))),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.9)
                  )
                ]
              ),
            )
          ]
        ),
      )
    );
  }
}