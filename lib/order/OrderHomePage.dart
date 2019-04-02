import 'package:flutter/material.dart';
import 'package:yiball/cart/CartHomePage.dart';
import 'package:yiball/mine/MineHomePage.dart';
import 'package:yiball/order/OrderListPage.dart';
import 'package:yiball/util/Utils.dart';
import 'package:yiball/widget/JView.dart';

const url =
    'http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg';

class OrderHomePage extends StatefulWidget {
  @override
  _OrderHomePageState createState() => _OrderHomePageState();
}

class _OrderHomePageState extends State<OrderHomePage> {
  var tabTitle = [
    '全部',
    '待付款',
    '待发货',
    '待收货',
    '已完成',
  ];

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: tabTitle.length,
        child: Scaffold(
          appBar: new SimpleAppBar(
            leading: false,
            title: '我的订单',
          ),
          body: new CustomScrollView(
            slivers: <Widget>[
              new SliverToBoxAdapter(
                child: new Image.network(
                  url,
                  width: double.infinity,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              new SliverToBoxAdapter(
                child: new Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        '购卖的所有商品均由商家派专人送货上门,请留意开门',
                        style: Utils.hintText12W30,
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
                          ))
                    ],
                  ),
                  color: Colors.black87,
                ),
              ),
              new SliverToBoxAdapter(
                child: TabBar(
                  tabs: tabTitle.map((f) => Tab(text: f)).toList(),
                  indicatorColor: Colors.red,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.red,
                ),
              ),
              new SliverToBoxAdapter(
                child: Container(
                  height: 800.0,
                    child: TabBarView(
                  children: <Widget>[
                    new OrderListPage(),
                    new OrderListPage(),
                    new OrderListPage(),
                    new OrderListPage(),
                    new OrderListPage(),
                  ],
                )),
              )
            ],
          ),
        ));
  }
}
