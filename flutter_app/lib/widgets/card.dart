import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.home),
        title: const Text('data'),
        trailing: const Icon(Icons.arrow_outward),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('9B'),
              duration: Duration(seconds: 5),
              ),
          );
        },
      ),
    );
  }
}