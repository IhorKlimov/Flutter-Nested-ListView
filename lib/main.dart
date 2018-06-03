import 'package:flutter/material.dart';
import 'package:flutter_nested_listview/example_2.dart';
import 'package:flutter_nested_listview/example_one.dart';
import 'package:flutter_nested_listview/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Home(title: 'Nested lists'),
      routes: {
        'exampleOne': (context) => ExampleOne(title: 'Example One'),
        'exampleTwo': (context) => ExampleTwo(title: 'Example Two'),
      },
    );
  }
}
