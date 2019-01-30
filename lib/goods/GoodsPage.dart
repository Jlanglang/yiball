import 'package:flutter/material.dart';

class GoodsPage extends StatefulWidget {
  @override
  _GoodsPageState createState() => _GoodsPageState();
}

class _GoodsPageState extends State<GoodsPage> {
  Widget content() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text("123"),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        content(),
      ],
    );
  }
}
