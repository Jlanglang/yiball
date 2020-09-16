import 'package:flutter/material.dart';
import 'package:yiball/home/GoodsHomePage.dart';
import 'package:yiball/cart/CartHomePage.dart';
import 'package:yiball/mine/AddressManage.dart';
import 'package:yiball/mine/MineHomePage.dart';
import 'package:yiball/order/OrderHomePage.dart';
import 'package:yiball/order/TestPage.dart';
import 'package:yiball/order/TestPage2.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectPage = 0;
  int _currentIndex = 0;
  var _pageController = new PageController(initialPage: 0);
  List _page = [
    new GoodsHomePage(),
    new CartHomePage(),
    new OrderHomePage(),
    new MineHomePage(),
  ];

  void _bottomSelect(index) {
    setState(() {
      _currentIndex = index;
    });
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
      bottomNavigationBar: new BottomAppBar(
          child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              disabledColor: Colors.green,
              onPressed: _currentIndex == 0 ? null : () => _bottomSelect(0)),
          IconButton(
              icon: Icon(Icons.search),
              disabledColor: Colors.green,
              onPressed: _currentIndex == 1 ? null : () => _bottomSelect(1)),
          IconButton(
              icon: Icon(Icons.assignment),
              disabledColor: Colors.green,
              onPressed: _currentIndex == 2 ? null : () => _bottomSelect(2)),
          IconButton(
              icon: Icon(Icons.person),
              disabledColor: Colors.green,
              onPressed: _currentIndex == 3 ? null : () => _bottomSelect(3)),
        ],
      )), //bottomAppBar
//      bottomNavigationBar: new BottomNavigationBar(
////        unselectedItemColor: Colors.grey,
////        selectedItemColor: Colors.blue,
//        items: [
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: new Container(height: 0,),// 我也不知道为啥要设计成必传的.
//          ),
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.search),
//            title: new Container(),
//          ),
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.book),
//            title: new Container(),
//          ),
//          new BottomNavigationBarItem(
//            icon: Icon(Icons.person),
//            title: new Container(),
//          ),
//        ],
////        backgroundColor: Colors.white,
//        type: BottomNavigationBarType.fixed,
//        onTap: _bottomSelect,
//        currentIndex: _selectPage,
//      ),
    );
  }
}
