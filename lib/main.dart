import 'package:apicalls/apicaller.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'api calls',
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Calls'),
      ),
      body: Center(
        child:
            Home(), // widget that will call API calls and displays the result.
      ),
    );
  }
}
