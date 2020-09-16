import 'package:flutter/material.dart';
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
          body: new NestedScrollView(
              headerSliverBuilder: (context, bool) {
                return [
                  SliverAppBar(
                      expandedHeight: 200.0,
                      floating: true,
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
                            child: new JFlex.row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Expanded(
                                  child: new Text(
                                    '购买的所有商品均由商家派专人送货上门,请留意开门',
                                    style: Utils.hintText12W,
                                    softWrap: true,
                                  ),
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
                                  ),
                                )
                              ],
                            ),
                          ))),
                  new SliverPersistentHeader(
                    delegate: new SliverTabBarDelegate(
                      new TabBar(
                        tabs: tabTitle.map((f) => Tab(text: f)).toList(),
                        indicatorColor: Colors.red,
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.red,
                        labelPadding: EdgeInsets.all(0),
                      ),
                      color: Colors.white,
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: TabBarView(
                children: <Widget>[
                  new OrderListPage(),
                  new OrderListPage(),
                  new OrderListPage(),
                  new OrderListPage(),
                  new OrderListPage(),
                ],
              )),
        ));
  }
}

class SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar widget;
  final Color color;

  const SliverTabBarDelegate(this.widget, {this.color})
      : assert(widget != null);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: widget,
      color: color,
    );
  }

  @override
  bool shouldRebuild(SliverTabBarDelegate oldDelegate) {
    return false;
  }

  @override
  double get maxExtent => widget.preferredSize.height;

  @override
  double get minExtent => widget.preferredSize.height;
}
