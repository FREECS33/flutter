import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/card.dart';
import 'package:flutter_app/widgets/counter_widget.dart';

class MenuAdminScreen extends StatelessWidget {
  final String title;
  const MenuAdminScreen({super.key, required this.title});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          title: Text(title),
          ),
          body: Center(
            child: CounterWidget(),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => {},
            ),
    );
  }
}
