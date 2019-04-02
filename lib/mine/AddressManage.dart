import 'package:flutter/material.dart';
import 'package:yiball/util/Utils.dart';
import 'package:yiball/widget/JView.dart';

class AddressManage extends StatefulWidget {
  @override
  _AddressManageState createState() => _AddressManageState();
}

class _AddressManageState extends State<AddressManage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new SimpleAppBar(
        leading: true,
        title: '收货地址管理',
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemBuilder: _getItem,
            itemCount: 10,
          ),
          new Positioned(
            child: new JView(
              color: Colors.red,
              body: Text(
                '新建地址',
                style: Utils.bodyText16W,
                textAlign: TextAlign.center,
              ),
            ),
            left: 20.0,
            right: 20.0,
            bottom: 10.0,
          )
        ],
      ),
    );
  }

  Widget _getItem(BuildContext context, int index) {
    return JFlex.col(
      crossAxisAlignment: CrossAxisAlignment.start,
      margin: EdgeInsets.only(bottom: 10.0),
      color: Colors.white,
      children: <Widget>[
        new JFlex.col(
          padding: EdgeInsets.only(top: 8.0, left: 8.0),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new JFlex.row(
              padding: EdgeInsets.only(bottom: 8.0),
              children: <Widget>[
                new Text('黄硕强', style: Utils.bodyText16),
                new Text('137***2424', style: Utils.bodyText16),
                new BoxBorderView(
                  text: Text(
                    '公司',
                    style: TextStyle(color: Colors.blue),
                  ),
                  color: Colors.blue,
                )
              ],
            ),
            Text(
              'xxxxxxxx',
              style: Utils.hintText12B38,
              textAlign: TextAlign.start,
            ),
            JView(
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(color: Colors.grey, width: 0.5))),
              padding: null,
              start: new JFlex.row(
                children: <Widget>[
                  Checkbox(
                    value: true,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  Text(
                    '设为默认',
                    style: Utils.hintText12B38,
                  ),
                ],
              ),
              body: new JFlex.row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new RaisedButton.icon(
                    disabledColor: Colors.transparent,
                    onPressed: null,
                    icon: Icon(Icons.mode_edit),
                    label: Text('编辑'),
                  ),
                  new RaisedButton.icon(
                    disabledColor: Colors.transparent,
                    onPressed: null,
                    icon: Icon(Icons.delete),
                    label: Text('删除'),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
