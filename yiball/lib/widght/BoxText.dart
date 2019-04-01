import 'package:flutter/material.dart';

class BoxBorderView extends StatelessWidget {
  final text;
  final radius;
  final color;
  final width;
  final padding;

  const BoxBorderView(
      {@required this.text,
      this.padding = 0.0,
      this.radius = 3.0,
      this.color = Colors.black,
      this.width = 1.0})
      : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: text,
      decoration: BoxDecoration(
          border: Border.all(color: color, width: width),
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      padding: EdgeInsets.all(padding),
    );
  }
}
