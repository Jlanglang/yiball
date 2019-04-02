import 'package:flutter/material.dart';

class EditAddress extends StatefulWidget {
  @override
  _EditAddressState createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('编辑收货地址'),
        centerTitle: true,
        actions: <Widget>[
          Text('删除')
        ],
        leading: Icon(Icons.arrow_back_ios,size: 15.0,),
      ),
    );
  }
}
