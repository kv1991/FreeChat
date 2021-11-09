import 'package:flutter/material.dart';
import 'package:free_chat/screens/charts/components/body.dart';

class ChartsScreen extends StatelessWidget {
  const ChartsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Chats'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Body()
    );
  }
}