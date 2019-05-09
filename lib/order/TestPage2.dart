import 'package:flutter/material.dart';
import 'package:yiball/order/OrderListPage.dart';
import 'package:yiball/util/Utils.dart';

const url =
    'http://www.pptbz.com/pptpic/UploadFiles_6909/201203/2012031220134655.jpg';

class TestPage2 extends StatefulWidget {
  @override
  _TestPage2State createState() => _TestPage2State();
}

class _TestPage2State extends State<TestPage2> {
  var tabTitle = [
    '页面1',
    '页面2',
    '页面3',
  ];

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: tabTitle.length,
        child: Scaffold(
          body: new CustomScrollView(
            slivers: <Widget>[
              new SliverAppBar(
                expandedHeight: 200.0,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      "我是可以跟着滑动的title",
                    ),
                    background: Image.network(
                      url,
                      fit: BoxFit.cover,
                    )),
              ),
              new SliverToBoxAdapter(
                child: new TabBar(
                  tabs: tabTitle.map((f) => Tab(text: f)).toList(),
                  indicatorColor: Colors.red,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.red,
                ),
              ),
              new SliverFillRemaining(
                child: TabBarView(
                  children: tabTitle
                      .map((s) => ListView.builder(
                            itemBuilder: (context, int) => Text("123"),
                            itemCount: 50,
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ));
  }
}

