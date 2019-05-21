import 'package:flutter/material.dart';
import 'package:yiball/util/Utils.dart';
import 'package:yiball/widget/JView.dart';

class CartHomePage extends StatefulWidget {
  @override
  _CartHomePageState createState() => new _CartHomePageState();
}

const url =
    'http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg';

class _CartHomePageState extends State<CartHomePage> {
  Widget _getItem(BuildContext context, int index) {
    return new Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: Divider.createBorderSide(context,
                color: Colors.grey, width: 0.5),
          ),
        ),
        padding: EdgeInsets.only(top: 10.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Row(
              children: <Widget>[
                new BoxBorderView(
                  text: new Text('满减', style: Utils.hintText12R),
                  color: Colors.red,
                  radius: 1.0,
                  padding: 1.0,
                ),
                new Expanded(
                    child: new Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child:
                            new Text('你购卖的商品清单如下:', style: Utils.bodyText16))),
                new Text('再逛逛 >', style: Utils.hintText12R)
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            new Padding(
              padding: EdgeInsets.all(8.0),
              child: new Row(
                children: <Widget>[
                  new Checkbox(value: false, onChanged: null),
                  new Image(
                    image: new NetworkImage(
                        'http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg'),
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: new Container(
                        height: 100.0,
                        padding: EdgeInsets.only(left: 10.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: new Column(
                                children: <Widget>[
                                  Text('123', style: Utils.bodyText16),
                                  Text('123', style: Utils.hintText12B38),
                                  BoxBorderView(
                                    text: new Text(
                                      '2件起购',
                                      style: Utils.hintText12R,
                                    ),
                                    color: Colors.red,
                                    width: 50,
                                    borderWidth: 0.5,
                                    radius: 3.0,
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '\$20',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20.0),
                                    ),
                                    Text(
                                      '\$20',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                    new Container(
                                      child: new Icon(
                                        Icons.remove,
                                        color: Colors.grey,
                                      ),
                                      decoration: new BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                    new Container(
                                      decoration: new BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      alignment: Alignment.center,
                                      child: new Text('1'),
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                    new Container(
                                      child: new Icon(Icons.add),
                                      decoration: new BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1.0),
                                      ),
                                      height: 30.0,
                                      width: 30.0,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            new JFlex.row(
              padding: EdgeInsets.only(
                  left: 50.0, right: 10.0, top: 5.0, bottom: 5.0),
              color: Colors.amberAccent,
              children: <Widget>[
                new Text('促销', style: Utils.bodyText16),
                new Expanded(
                  child: new Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: new Text('满3件总价8.0折:', style: Utils.bodyText16),
                  ),
                ),
                new Text('修改', style: Utils.hintText16B38)
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        new CustomScrollView(
          slivers: <Widget>[
            new SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                title: new Text('123'),
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    background: new Container(
                      alignment: Alignment.bottomCenter,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                url,
                              ))),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                            '购卖的所有商品均由商家派专人送货上门,请留意开门',
                            style: Utils.hintText12W,
                          ),
                          FlatButton.icon(
                              onPressed: null,
                              icon: Icon(
                                Icons.error_outline,
                                color: Colors.white,
                              ),
                              label: new Text(
                                '急速上门',
                                style: Utils.hintText12W,
                              )),
                        ],
                      ),
                    ))),
            new SliverList(
              delegate: SliverChildBuilderDelegate(_getItem, childCount: 20),
            )
          ],
        ),
        new Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: new JFlex.row(
              mainAxisAlignment: MainAxisAlignment.start,
              color: Colors.white,
              children: <Widget>[
                Checkbox(value: true, onChanged: null),
                Text(
                  '全选',
                  style: Utils.bodyText16,
                ),
                new Expanded(
                    flex: 5,
                    child: new JFlex.col(
                      children: <Widget>[
                        Text('合计:289.47'),
                        Text('总额:349 立减:59.5'),
                      ],
                    )),
                new Expanded(
                  child: new Container(
                      height: 50.0,
                      color: Colors.red,
                      child: new Center(
                        child: new Text(
                          '去结算(10)',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  flex: 2,
                )
              ],
            )),
      ],
    ));
  }
}

