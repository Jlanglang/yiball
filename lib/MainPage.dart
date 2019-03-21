import 'package:flutter/material.dart';
import 'goods/GoodsPage.dart';
import 'user/UserPage.dart';
import 'article/ArticlePage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _selectPage = 0;
  var _pageController = new PageController(initialPage: 0);
  List _page = [
    new ArticlePage(),
    new GoodsPage(),
    new UserPage(),
    new UserPage(),
  ];
  var _bottom = [
    new BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页'),
    ),
    new BottomNavigationBarItem(
      icon: Icon(Icons.stars),
      title: Text('关注'),
    ),
    new BottomNavigationBarItem(
      icon: Icon(Icons.account_balance_wallet),
      title: Text('简书钻'),
    ),
    new BottomNavigationBarItem(
      icon: Icon(Icons.message),
      title: Text('消息'),
    ),
    new BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text('我的'),
    )
  ];

  void _bottomSelect(index) {
    _pageController.animateToPage(index,
        duration: new Duration(milliseconds: 1000), curve: Curves.ease);
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

  ///浮动按钮
  Widget float(BuildContext context) => new FloatingActionButton(
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) =>
                SimpleDialog(title: Text("标题"), children: <Widget>[
                  SimpleDialogOption(child: Text('内容1')),
                  SimpleDialogOption(child: Text('内容2')),
                ]),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: body(_page),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: float(context),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _bottom,
          onTap: _bottomSelect,
          currentIndex: _selectPage,
        ));
  }
}
