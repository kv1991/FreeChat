import 'package:flutter/material.dart';
import 'package:free_chat/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'free chat',
      debugShowCheckedModeBanner: false,
      darkTheme: darkThemeData(context),
      home: const Text('This is home screen.')
    );
  }
}
