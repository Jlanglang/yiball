import 'package:flutter/material.dart';

class UserPager extends StatefulWidget {
  @override
  _UserPagerState createState() => new _UserPagerState();
}

class _UserPagerState extends State<UserPager> {
  Widget getItem(int i) {
    var _image = new Image(
      image: new NetworkImage(
          "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1984638492,2471644250&fm=26&gp=0.jpg"),
      width: 100.0,
      height: 100.0,
      fit: BoxFit.fitHeight,
    );
    return new Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              _image,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "菜菜菜菜菜菜菜菜菜菜菜菜菜菜菜菜菜菜菜菜菜1231231311111111111111111111312312312312312菜",
                    textAlign: TextAlign.start,
                  ),
                  Text("菜${i}"),
                ],
              )),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: new ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) => this.getItem(i),
      ),
    );
  }
}
