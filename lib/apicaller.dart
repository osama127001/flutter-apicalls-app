import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            child: Icon(Icons.filter_drama),
            onPressed: isLoading ? null : _fetchPost,
          )
        ],
      ),
    );
  }

  // state related functionality, inline function that sets isLoading
  setLoading(bool state) => setState(() => isLoading = state);

  // Async Function
  _fetchPost() async {
    try {
      setLoading(true);
      await _fetchData();
    } finally {
      setLoading(false);
    }
  }

  // Fetch Data, Async Function
  _fetchData() async {
    final url = 'https://api.adviceslip.com/advice';
    final response = await http.get(url);
    dynamic body = json.decode(response.body);
    if (response.statusCode == 200) {
      setState(() {
        _advice = body['slip']['advice'];
        _intCounter += 1;
      });
    } else {
      print('Failed to get Data!');
    }
  }
}
