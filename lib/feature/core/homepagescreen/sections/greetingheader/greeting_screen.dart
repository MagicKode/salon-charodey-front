import 'package:flutter/material.dart';
import 'greeting_body.dart';

class GreetingScreen extends StatelessWidget {
  final String userName;

  const GreetingScreen({super.key, this.userName = 'Гость'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GreetingBody(userName: userName),
      ),
    );
  }
}
