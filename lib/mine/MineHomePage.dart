import 'package:flutter/material.dart';
import 'package:yiball/util/Utils.dart';
import 'package:yiball/widget/JView.dart';

const url =
    'http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg';

class MineHomePage extends StatefulWidget {
  @override
  _MineHomePageState createState() => _MineHomePageState();
}

class _MineHomePageState extends State<MineHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new SimpleAppBar(
        centerTitle: true,
        title: '我的',
      ),
      body: new Container(
        child: new JFlex.col(
          children: <Widget>[
            new JView(
              start: new Container(
                child: new CircleAvatar(
                  backgroundImage: NetworkImage(url),
                  radius: 10.0,
                ),
                width: 60.0,
                height: 60.0,
                margin: EdgeInsets.only(right: 10.0),
              ),
              body: Text(
                '123123',
                style: Utils.titleText28,
              ),
              end: Icon(
                Icons.arrow_forward,
                size: 15.0,
              ),
              height: 100.0,
              margin: EdgeInsets.only(bottom: 20.0),
            ),
            new JView(
              body: Text('我的手机号码:13724462456'),
              end: Icon(
                Icons.arrow_forward,
                size: 15.0,
              ),
            ),
            new JView(
              body: GestureDetector(child:Text('我的收货地址'),
              onTap: ()=>Navigator.of(context).pushNamed('mine/addressManage'),),
              end: Icon(
                Icons.arrow_forward,
                size: 15.0,
              ),
            ),
            new JView(
              body: Text('推广二维码'),
              end: Icon(
                Icons.arrow_forward,
                size: 15.0,
              ),
            ),
            new JView(
              body: Text('我的红包'),
              end: Icon(
                Icons.arrow_forward,
                size: 15.0,
              ),
            ),
            new JView(
              body: Text('我的建议'),
              end: Icon(
                Icons.arrow_forward,
                size: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
