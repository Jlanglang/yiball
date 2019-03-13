import 'dart:async';

import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  var _isExpanded = false;

  Widget getItem(int i) {
    return new Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              new ExpandIcon(
                onPressed: (value) {
                  setState(() {
                    _isExpanded = !value;
                  });
                },
                isExpanded: _isExpanded,
              ),
              new Image(
                image: new NetworkImage(
                    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1984638492,2471644250&fm=26&gp=0.jpg"),
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
              new Column(
                children: <Widget>[Text("菜$i")],
              ),
            ],
          )),
    );
  }

  ///头部选项卡
  Widget getHead() => TabBar();

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          getHead(),
        ],
      ),
    );
  }
}
