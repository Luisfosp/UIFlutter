import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación adaptable'),
      ),
      body: Container(
        child: (screenWidth < 600)
            ? const Text('Pantalla pequeña')
            : const Text('Pantalla grande'),
      ),
    );
  }
}