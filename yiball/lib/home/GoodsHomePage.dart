import 'package:flutter/material.dart';
import 'package:yiball/util/Utils.dart';

class GoodsHomePage extends StatefulWidget {
  @override
  _GoodsHomePageState createState() => new _GoodsHomePageState();
}

const url =
    'http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg';

class _GoodsHomePageState extends State<GoodsHomePage> {
  final heardGridItem = [
    {"icon": Icons.add, 'label': '家具百货'},
    {"icon": Icons.add, 'label': '家具百货'},
    {"icon": Icons.add, 'label': '服装配饰'},
    {"icon": Icons.add, 'label': '食品酒水'},
    {"icon": Icons.add, 'label': '其它商品'},
  ];

  Widget _getItem(BuildContext context, int index) {
    return new Container(
      height: 130.0,
      decoration: BoxDecoration(
        border: Border(
          bottom:
              Divider.createBorderSide(context, color: Colors.grey, width: 0.5),
        ),
      ),
      padding: EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Image(
            image: new NetworkImage(
                'http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg'),
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: new Container(
                padding: EdgeInsets.only(left: 10.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('123', style: Utils.bodyText16),
                          new Row(
                            children: <Widget>[
                              new Container(
                                width: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)),
                                ),
                                child: new LinearProgressIndicator(
                                  backgroundColor: Colors.grey,
                                  value: 0.8,
                                  valueColor: new AlwaysStoppedAnimation<Color>(
                                      Colors.red),
                                ),
                              ),
                              new Text(' 仅剩10件'),
                            ],
                          )
                        ]),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '\$20',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 20.0),
                            ),
                            Text(
                              '\$20',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        ),
                        new RaisedButton(
                          onPressed: null,
                          child: new Text(
                            '马上抢',
                            style: Utils.hintText16W,
                          ),
                          splashColor: Colors.white,
                          disabledColor: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverToBoxAdapter(
            child: new Container(
              width: double.infinity,
              child: new Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Image.network(
                    url,
                    height: 150.0,
                    width: 1.0 / 0.0,
                    fit: BoxFit.cover,
                  ),
                  new Text(
                    '许个愿吧',
                    style: Utils.bodyText16,
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 140.0),
                    width: double.infinity,
                    padding:
                        new EdgeInsetsDirectional.only(top: 40.0, bottom: 20.0),
                    child: new Column(
                      children: <Widget>[
                        new Text('许个愿吧', style: Utils.titleText28),
                        new Text(
                          '广州茶楼点心餐饮',
                          style: Utils.hintText16W30,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                    ),
                  ),
                  new Container(
                      margin: EdgeInsets.only(top: 90.0),
                      child: Image.network(
                        url,
                        height: 80.0,
                        width: 80.0,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
          ),
          new SliverGrid.count(
            childAspectRatio: 1.5,
            crossAxisCount: heardGridItem.length,
            children: heardGridItem.map((f) {
              return new Center(
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Icon(f['icon']), Text(f['label'])],
                ),
              );
            }).toList(),
          ),
          new SliverToBoxAdapter(
            child: new Text(
              '今日特惠',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          new SliverToBoxAdapter(
            child: new Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: new Container(
                    margin: EdgeInsets.only(left: 10.0),
                    height: 200.0,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new NetworkImage(url),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(
                            left: 5.0, bottom: 3.0, right: 10.0),
                        height: 97.0,
                        width: double.infinity,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: new NetworkImage(url),
                          ),
                        ),
                      ),
                      new Container(
                        margin:
                            EdgeInsets.only(left: 5.0, top: 3.0, right: 10.0),
                        height: 97.0,
                        width: double.infinity,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: new NetworkImage(url),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          new SliverToBoxAdapter(
            child: new Text(
              '每周热兑',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          new SliverList(
            delegate: SliverChildBuilderDelegate(_getItem, childCount: 20),
          )
        ],
      ),
    );
  }
}
