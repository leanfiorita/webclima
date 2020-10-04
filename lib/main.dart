import 'package:flutter/material.dart';
import 'package:webclima/views/layout_template/layout_template.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'LEMONMILK'),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LayoutTemplate(),
    );
  }
}
