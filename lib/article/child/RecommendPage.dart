import 'package:flutter/material.dart';
import 'dart:async';

///推荐
class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  Future<String> getData() async {
    return await Future.delayed(Duration(seconds: 2), () => '请求数据成功');
  }

  Widget buildList(BuildContext context, int index) {
    return GestureDetector(
        onTap: () {
          print("123");
          getData().then((s) {
            print(s);
          });
        },
        child: Container(
            color: Color(0xffffffff),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  'QWERQWER233323323233332323QWERQWER233323323233332323',
                  style: TextStyle(fontSize: 20.0),
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: Image(
                          image: NetworkImage(
                              'http://pic22.nipic.com/20120714/9622064_105642209176_2.jpg')),
                      flex: 1,
                    ),
                    new Expanded(
                      child: Image(
                          image: NetworkImage(
                              'http://pic22.nipic.com/20120714/9622064_105642209176_2.jpg')),
                      flex: 1,
                    ),
                    new Expanded(
                      child: Image(
                          image: NetworkImage(
                              'http://pic22.nipic.com/20120714/9622064_105642209176_2.jpg')),
                      flex: 1,
                    ),
                  ],
                ),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.details, size: 15.0, color: Colors.redAccent),
                    Text('1.823',
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0)),
                    Text(' jlanglang ${123} 阅读 ${123} 评论 ${3} 喜欢'),
                  ],
                )
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView.builder(
        itemBuilder: buildList,
        itemCount: 20,
      ),
    );
  }
}
