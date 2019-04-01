import 'package:flutter/material.dart';

class JFlex extends StatelessWidget {
  final mainAxisAlignment;
  final mainAxisSize;
  final crossAxisAlignment;
  final textDirection;
  final verticalDirection;
  final textBaseline;
  final List<Widget> children;

  final padding;
  final margin;
  final alignment;
  final color;
  final decoration;
  final foregroundDecoration;
  final width;
  final height;
  final constraints;
  final transform;
  final direction;

  const JFlex({
    Key key,
    @required this.direction,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children = const <Widget>[],
    this.padding,
    this.margin,
    this.alignment,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.transform,
  }) : super(key: key);

  const JFlex.row({
    Key key,
    this.direction: Axis.horizontal,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children = const <Widget>[],
    this.padding,
    this.margin,
    this.alignment,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.transform,
  }) : super(key: key);

  const JFlex.col({
    Key key,
    this.direction: Axis.vertical,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.children = const <Widget>[],
    this.padding,
    this.margin,
    this.alignment,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.transform,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      alignment: alignment,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      transform: transform,
      child: Flex(
        direction: this.direction,
        mainAxisAlignment: this.mainAxisAlignment,
        crossAxisAlignment: this.crossAxisAlignment,
        children: this.children,
        mainAxisSize: this.mainAxisSize,
        textDirection: this.textDirection,
        textBaseline: this.textBaseline,
        verticalDirection: this.verticalDirection,
      ),
    );
  }
}

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

class JTextView extends StatelessWidget {
  final Widget leftIcon;
  final Widget body;
  final Widget hint;
  final Widget rightIcon;
  final height;

  const JTextView(
      {Key key, this.leftIcon, this.body, this.hint, this.rightIcon, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widget = new List<Widget>();
    if (leftIcon != null) {
      widget.add(leftIcon);
    }
    if (rightIcon != null) {
      widget.add(rightIcon);
    }
    if (body != null) {
      widget.add(body);
    }
    if (hint != null) {
      widget.add(hint);
    }
    return JFlex.row(
      height: height,
      children: widget,
    );
  }
}
