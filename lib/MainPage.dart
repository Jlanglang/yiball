import 'package:flutter/material.dart';
import 'package:yiball/home/GoodsHomePage.dart';
import 'package:yiball/cart/CartHomePage.dart';
import 'package:yiball/mine/AddressManage.dart';
import 'package:yiball/mine/MineHomePage.dart';
import 'package:yiball/order/OrderHomePage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectPage = 0;
  var _pageController = new PageController(initialPage: 0);
  List _page = [
    new GoodsHomePage(),
    new CartHomePage(),
    new OrderHomePage(),
    new MineHomePage(),
  ];

  void _bottomSelect(index) {
    _pageController.jumpToPage(index);
  }

  void _onPageChanged(index) {
    setState(() {
      _selectPage = index;
    });
  }

  ///主体内容
  Widget body(_page) => PageView.builder(
        onPageChanged: _onPageChanged,
        controller: _pageController,
        itemBuilder: (BuildContext context, int index) {
          return _page[index];
        },
        itemCount: _page.length,
      );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: body(_page),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            title: Text('购物车'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('订单查询'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('我的'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: _bottomSelect,
        currentIndex: _selectPage,
      ),
    );
  }
}
