import 'package:flutter/material.dart';
import 'package:yiball/util/Utils.dart';
import 'package:yiball/widget/JView.dart';

class MineHomePage extends StatefulWidget {
  @override
  _MineHomePageState createState() => _MineHomePageState();
}

class _MineHomePageState extends State<MineHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text(
          '我的',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: new Container(
        child: new JFlex.col(
          children: <Widget>[
            new JTextView(
              body: Text('123123',style: Utils.hintText12R,),
              rightIcon: Text('123123',style: Utils.hintText12R,),
              hint: Text('123123',style: Utils.hintText12R,),
            )
          ],
        ),
      ),
    );
  }
}
