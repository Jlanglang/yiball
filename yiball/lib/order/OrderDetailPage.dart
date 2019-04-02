import 'package:flutter/material.dart';
import 'package:yiball/util/Utils.dart';
import 'package:yiball/widget/JView.dart';

class OrderDetailPage extends StatefulWidget {
  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new SimpleAppBar(
        title: '订单详情',
        leading: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: new JFlex.col(
              padding: EdgeInsets.only(left: 40.0),
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(url), fit: BoxFit.cover),
              ),
              children: <Widget>[
                Text(
                  '等待买家付款',
                  style: Utils.bodyText16W,
                ),
                Text(
                  '23小时23分23秒',
                  style: Utils.hintText12W,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: JFlex.col(
              crossAxisAlignment: CrossAxisAlignment.start,
              padding: EdgeInsets.symmetric(vertical: 8.0),
              color: Colors.white,
              children: <Widget>[
                JView(
                  start: Icon(
                    Icons.location_on,
                    size: 15.0,
                  ),
                  body: Text(' 尤同学   15013214428'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Text('广东省XXX'),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: new JFlex.col(
                margin: EdgeInsets.symmetric(vertical: 18.0),
                children: <Widget>[
              JView(
                start: Icon(Icons.home),
                body: Text(
                  '美宜佳',
                  style: Utils.bodyText16,
                ),
                end: BoxBorderView(
                  padding: 4.0,
                  width: 0.5,
                  text: Text(
                    '联系商家',
                    style: Utils.hintText12,
                  ),
                ),
              ),
              JView(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(
                        color: Colors.grey,
                        width: 0.3,
                      ),
                    )),
                height: 100.0,
                padding: EdgeInsets.symmetric(vertical: 8.0),
                start: Image.network(
                  url,
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.fill,
                ),
                body: JFlex.col(
                  padding: EdgeInsets.only(left: 8.0),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '康佳扫地机器人',
                      style: Utils.bodyText16,
                    ),
                    Text(
                      '规格123213',
                      style: Utils.hintText12B38,
                    ),
                    Expanded(
                        child: JFlex.row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '规格123213',
                          style: Utils.hintText12,
                        ),
                        Text(
                          'x1',
                          style: Utils.hintText12,
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
