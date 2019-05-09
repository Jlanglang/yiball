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
    const grayDecoration = BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
    );
    return Scaffold(
        appBar: new SimpleAppBar(
          title: '编辑收货地址',
          leading: true,
          actions: [
            new IconButton(
                icon: Text(
              '删除',
              textAlign: TextAlign.left,
              style: Utils.hintText12,
            )),
          ],
        ),
        body: new Stack(
          children: <Widget>[
            new JFlex.col(
              children: <Widget>[
                new JFlex.row(
                  height: 88,
                  children: <Widget>[
                    Expanded(
                      child: new JFlex.col(
                        color: Colors.white,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          JView(
                            start: Text(
                              '收货人:',
                              style: Utils.hintText12,
                            ),
                            decoration: grayDecoration,
                          ),
                          JView(
                            start: Text(
                              '手机号码:',
                              style: Utils.hintText12,
                            ),
                            decoration: grayDecoration,
                          ),
                        ],
                      ),
                    ),
                    new JFlex.col(
                      width: 88,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      mainAxisAlignment: MainAxisAlignment.center,
                      direction: Axis.vertical,
                      children: <Widget>[Icon(Icons.person), Text('123')],
                    )
                  ],
                ),
                new JView(
                  body: Text('所在地区'),
                  decoration: grayDecoration,
                  end: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18.0,
                  ),
                ),
                new JView(
                  start: Text('详细地址: '),
                  body: TextField(
                    cursorColor: Colors.transparent,
                    decoration: null,
                  ),
                  decoration: grayDecoration,
                ),
                JView(
                  height: 60,
                  start: Text('标签:'),
                  decoration: grayDecoration,
                  body: Wrap(
                    spacing: 8.0, // 主轴(水平)方向间距
                    runSpacing: 4.0, // 纵轴（垂直）方向间距
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      BoxBorderView(
                        text: Text(
                          '家',
                          textAlign: TextAlign.center,
                        ),
                        width: 50,
                      ),
                      BoxBorderView(
                        text: Text(
                          '家',
                          textAlign: TextAlign.center,
                        ),
                        width: 50,
                      ),
                      BoxBorderView(
                        text: Text(
                          '家',
                          textAlign: TextAlign.center,
                        ),
                        width: 50,
                      ),
                    ],
                  ),
                ),
                JView(
                  body: Text('轻松购:'),
                  decoration: grayDecoration,
                  end: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 60,
              left: 0,
              right: 0,
              child: Container(
                  alignment: Alignment.center,
                  child: new Builder(builder: (BuildContext context) {
                    return MaterialButton(
                      minWidth: 200,
                      onPressed: () {
                        final scaffold = Scaffold.of(context);
                        scaffold.showSnackBar(
                          SnackBar(
                            content: const Text('Added to favorite'),
                            action: SnackBarAction(
                                label: 'UNDO',
                                onPressed: scaffold.hideCurrentSnackBar),
                          ),
                        );
                      },
                      child: Text(
                        '保存',
                        style: Utils.hintText12W,
                      ),
                      color: Colors.red,
                    );
                  })),
            ),
          ],
        ));
  }
}
