import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => new _UserPageState();
}

class _UserPageState extends State<UserPage> {

  Widget getItem(int i) {
    return new Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
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

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) => this.getItem(i),
      ),
    );
  }
}
