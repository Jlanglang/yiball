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
        body: new Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                new SliverToBoxAdapter(
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
                new SliverToBoxAdapter(
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
                new SliverToBoxAdapter(
                  child: new JFlex.col(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 8.0),
                    margin: EdgeInsets.symmetric(vertical: 18.0),
                    children: <Widget>[
                      new JView(
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
                      new JView(
                        decoration: BoxDecoration(
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
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
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
                  ),
                ),
                new SliverToBoxAdapter(
                  child: new JFlex.col(
                    padding: EdgeInsets.all(15.0),
                    color: Colors.white,
                    children: <Widget>[
                      JFlex.row(
                        margin: EdgeInsets.only(bottom: 10.0),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '商品总价',
                            style: Utils.bodyText16,
                          ),
                          Text(
                            '20.00',
                            style: Utils.bodyText16,
                          ),
                        ],
                      ),
                      JFlex.row(
                        margin: EdgeInsets.only(bottom: 10.0),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '商品总价',
                            style: Utils.bodyText16,
                          ),
                          Text(
                            '20.00',
                            style: Utils.bodyText16,
                          ),
                        ],
                      ),
                      JFlex.row(
                        margin: EdgeInsets.only(bottom: 10.0),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '商品总价',
                            style: Utils.bodyText16,
                          ),
                          Text(
                            '20.00',
                            style: Utils.bodyText16,
                          ),
                        ],
                      ),
                      JFlex.row(
                        padding: EdgeInsets.only(top: 10.0),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '实付款',
                            style: Utils.bodyText16,
                          ),
                          Text(
                            '20.00',
                            style: Utils.bodyText16R,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                new SliverToBoxAdapter(
                  child: JFlex.col(
                    margin: EdgeInsets.only(top: 18.0, bottom: 100.0),
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    children: <Widget>[
                      JFlex.row(
                        padding: EdgeInsets.only(top: 10.0),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '实付款',
                            style: Utils.bodyText16,
                          ),
                          Text(
                            '20.00',
                            style: Utils.bodyText16,
                          ),
                        ],
                      ),
                      JFlex.row(
                        padding: EdgeInsets.only(top: 10.0),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '实付款',
                            style: Utils.bodyText16,
                          ),
                          Text(
                            '20.00',
                            style: Utils.bodyText16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            new Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: JFlex.row(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  BoxBorderView(
                    padding: 4.0,
                    color: Colors.grey,
                    backgroundColor: Colors.white,
                    text: Text(
                      '取消订单',
                      style: Utils.hintText12,
                    ),
                  ),
                  BoxBorderView(
                    margin: EdgeInsets.only(left: 10.0),
                    padding: 4.0,
                    color: Colors.red,
                    backgroundColor: Colors.red,
                    text: Text(
                      '去付款',
                      style: Utils.hintText12W,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
