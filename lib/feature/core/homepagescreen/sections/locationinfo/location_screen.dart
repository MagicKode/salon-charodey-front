import 'package:flutter/material.dart';
import 'location_body.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Адрес и часы работы')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: LocationBody(),
      ),
    );
  }
}
