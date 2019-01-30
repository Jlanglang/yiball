import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/goods/GoodsPage.dart';
import 'package:flutter_app/user/UserPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '123': (context) => new UserPager(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectPage = 0;

  var _page = [
    new UserPager(),
    new GoodsPage(),
    new UserPager(),
  ];

  var _bottom = [
    new BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页'),
    ),
    new BottomNavigationBarItem(
      icon: Icon(Icons.shop),
      title: Text('菜'),
    ),
    new BottomNavigationBarItem(
      icon: Icon(Icons.people),
      title: Text('菜'),
    )
  ];

  var _pageController = new PageController(initialPage: 0);

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
  Widget body() => PageView.builder(
        onPageChanged: _onPageChanged,
        controller: _pageController,
        itemBuilder: (BuildContext context, int index) {
          return _page[index];
        },
        itemCount: _page.length,
      );

  ///浮动按钮
  Widget float() => new FloatingActionButton(
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '123');
        },
      );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: body(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: float(),
        bottomNavigationBar: new BottomNavigationBar(
          items: _bottom,
          onTap: _bottomSelect,
          currentIndex: _selectPage,
        ));
  }
}
