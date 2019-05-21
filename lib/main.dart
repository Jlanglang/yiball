import 'package:flutter/material.dart';
import 'package:yiball/MainPage.dart';
import 'package:yiball/mine/AddressManage.dart';
import 'package:yiball/mine/EditAddress.dart';
import 'package:yiball/order/OrderDetailPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'yiball',
      routes: {
        'order/detail': (context) => OrderDetailPage(),
        'mine/editAddress': (context) => EditAddress(),
        'mine/addressManage': (context) => AddressManage(),
      },
      theme: new ThemeData(
          platform: TargetPlatform.iOS,
          primaryColor: Colors.blue,
          primaryTextTheme: TextTheme(body2: TextStyle(color: Colors.white))),
      home: new MainPage(),
    );
  }
}
