import 'package:flutter/material.dart';

///首页文章
class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  var _isExpanded = false;
  var tabs = [
    '推荐',
    '专题',
    '连载',
  ];

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
  Widget getHead() {
    return AppBar(
      title: Container(
        width: 200.0,
        child: TabBar(tabs: tabs.map((f) => Tab(text: f)).toList()),
      ),
      actions: <Widget>[
        IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () => {}, icon: Icon(Icons.add))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: getHead(),
        body: TabBarView(children: []),
      ),
    );
  }
}
