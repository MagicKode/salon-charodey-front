import 'package:flutter/material.dart';
import 'search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Поиск услуг')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SearchBody(
          onChanged: (query) {
            // Здесь будет логика поиска
          },
        ),
      ),
    );
  }
}
