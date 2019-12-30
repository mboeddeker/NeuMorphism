import 'package:flutter/material.dart';

class NeuMorphWidget extends StatelessWidget {
  final Widget child;
  double height, width;
  EdgeInsetsGeometry padding;
  Color color;
  BorderRadius borderRadius;

  NeuMorphWidget({
    Key key,
    @required this.child,
    this.height,
    this.width,
    this.padding,
    this.color,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius ?? BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white54,
            offset: Offset(-5, -5),
            blurRadius: 15,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(6, 6),
            blurRadius: 15,
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
