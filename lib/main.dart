import 'package:flutter/material.dart';
import 'package:flutter_app/MainPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Map<String, WidgetBuilder> route(context) => {

  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: route(context),
      home: new HomePage(),
    );
  }
}
