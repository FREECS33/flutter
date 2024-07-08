import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  double _fontSize = 20.0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _updateFontSize(double newSize) {
    setState(() {
      _fontSize = newSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Counter: $_counter',
          style: TextStyle(fontSize: _fontSize),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
        SizedBox(height: 20),
        Slider(
          value: _fontSize,
          min: 10,
          max: 50,
          onChanged: _updateFontSize,
        ),
      ],
    );
  }
}
