import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _advice = 'Test';
  int _intCounter = 0;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            '$_advice',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '$_intCounter',
            style: TextStyle(fontSize: 40),
          ),
          FloatingActionButton(
            child: Icon(Icons.file_upload),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
