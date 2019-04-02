import 'package:flutter/material.dart';
import 'package:yiball/util/Utils.dart';
import 'package:yiball/widget/JView.dart';

class EditAddress extends StatefulWidget {
  @override
  _EditAddressState createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new SimpleAppBar(
        title: '编辑收货地址',
        leading: true,
        actions: [
          Icon(Icons.delete,color: Colors.grey,),
        ],
      )
    );
  }
}
