import 'package:flutter/material.dart';
import 'package:path/path.dart';

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
  final Axis direction;

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
    this.color = Colors.transparent,
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
    this.color = Colors.transparent,
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
      color: decoration == null ? color : null,
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
  final backgroundColor;
  final width;
  final double padding;
  final margin;

  const BoxBorderView({
    @required this.text,
    this.padding = 0.0,
    this.radius = 3.0,
    this.color = Colors.black,
    this.width = 1.0,
    this.backgroundColor = Colors.transparent,
    this.margin,
  }) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: text,
      decoration: BoxDecoration(
          color: backgroundColor,
          border: color == null ? null : Border.all(color: color, width: width),
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      padding: EdgeInsets.all(padding),
    );
  }
}

class JView extends StatelessWidget {
  final Widget start;
  final Widget body;
  final Widget hint;
  final Widget end;
  final mainAxisAlignment;

  final mainAxisSize;
  final crossAxisAlignment;
  final padding;
  final margin;
  final color;
  final decoration;
  final height;
  final transform;
  final direction;
  final List<Widget> children;
  final offstage;

  const JView({
    Key key,
    this.start,
    this.body,
    this.hint,
    this.end,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.padding = const EdgeInsets.symmetric(horizontal: 8.0),
    this.margin,
    this.color = Colors.white,
    this.decoration,
    this.height = 44.0,
    this.transform,
    this.direction = Axis.horizontal,
    this.children = const [],
    this.offstage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = <Widget>[];
    if (children.length == 0) {
      if (start != null) {
        widget.add(start);
      }
      if (body != null) {
        widget.add(new Expanded(
          child: body,
          flex: 1,
        ));
      }
      if (hint != null) {
        widget.add(hint);
      }
      if (end != null) {
        widget.add(end);
      }
    }
    return new Offstage(
        offstage: offstage,
        child: Container(
          decoration: decoration,
          padding: padding,
          margin: margin,
          color: decoration == null ? color : null,
          height: height,
          transform: transform,
          child: JFlex(
            direction: direction,
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: this.crossAxisAlignment,
            children: children.length != 0 ? children : widget,
            mainAxisSize: this.mainAxisSize,
          ),
        ));
  }
}


class SimpleAppBar extends AppBar {
  SimpleAppBar({
    Key key,
    bool leading = false,
    automaticallyImplyLeading = true,
    String title = '',
    List<Widget> actions,
    flexibleSpace,
    bottom,
    elevation = 4.0,
    backgroundColor = Colors.white,
    brightness,
    iconTheme,
    textTheme,
    primary = true,
    centerTitle = true,
    titleSpacing = NavigationToolbar.kMiddleSpacing,
    toolbarOpacity = 1.0,
    bottomOpacity = 1.0,
  }) : super(
          key: key,
          leading: leading
              ? const BackLeading(
                  child: Icon(
                  Icons.arrow_back_ios,
                  size: 18.0,
                  color: Colors.black,
                ))
              : null,
          automaticallyImplyLeading: automaticallyImplyLeading,
          title: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 18.0),
          ),
          actions: actions,
          flexibleSpace: flexibleSpace,
          bottom: bottom,
          elevation: elevation,
          backgroundColor: backgroundColor,
          brightness: brightness,
          iconTheme: iconTheme,
          textTheme: textTheme,
          primary: primary,
          centerTitle: centerTitle,
          titleSpacing: titleSpacing,
          toolbarOpacity: toolbarOpacity,
          bottomOpacity: bottomOpacity,
        );
}

class BackLeading extends StatelessWidget {
  final child;

  const BackLeading({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: child,
    );
  }
}
