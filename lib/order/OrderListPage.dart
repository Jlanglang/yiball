import 'package:flutter/material.dart';
import 'package:yiball/util/Utils.dart';
import 'package:yiball/widget/JView.dart';

class OrderListPage extends StatefulWidget {
  @override
  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 0),
        itemBuilder: _getItem,
        itemCount: 10,
      ),
    );
  }

  Widget _getItem(BuildContext context, int index) {
    return new GestureDetector(
      child: JFlex.col(
        color: Colors.white,
        margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          JView(
            start: Icon(Icons.home),
            body: Text(
              '美宜佳',
              style: Utils.bodyText16,
            ),
            end: Text(
              '待付款',
              style: Utils.bodyText16R,
            ),
          ),
          JView(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
              top: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            )),
            height: 100.0,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            start: Image.network(
              url,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.fill,
            ),
            body: JFlex.col(
              padding: EdgeInsets.only(left: 8.0),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '康佳扫地机器人',
                  style: Utils.bodyText16,
                ),
                Text(
                  '规格123213',
                  style: Utils.hintText12B38,
                ),
                Expanded(
                    child: JFlex.row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '规格123213',
                      style: Utils.hintText12,
                    ),
                    Text(
                      'x1',
                      style: Utils.hintText12,
                    ),
                  ],
                ))
              ],
            ),
          ),
          JFlex.row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            children: <Widget>[
              Text(
                '共一件商品',
                style: Utils.bodyText16,
              ),
              Text(
                '实付款:20.00',
                style: Utils.bodyText16,
              ),
            ],
          ),
          JFlex.row(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              BoxBorderView(
                padding: 4.0,
                color: Colors.grey,
                backgroundColor: Colors.white,
                text: Text(
                  '取消订单',
                  style: Utils.hintText12,
                ),
              ),
              BoxBorderView(
                margin: EdgeInsets.only(left: 10.0),
                padding: 4.0,
                color: Colors.red,
                backgroundColor: Colors.red,
                text: Text(
                  '去付款',
                  style: Utils.hintText12W,
                ),
              ),
            ],
          )
        ],
      ),
      onTap: () => Navigator.of(context).pushNamed('order/detail'),
    );
  }
}
