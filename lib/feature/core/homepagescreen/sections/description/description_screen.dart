import 'package:flutter/material.dart';
import 'description_body.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('О салоне')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: DescriptionBody(),
      ),
    );
  }
}
