import 'package:flutter/material.dart';

class NeuMorphWidget extends StatelessWidget {
  final Widget child;
  final double height, width;
  final EdgeInsetsGeometry padding;
  final Color color;
  final BorderRadius borderRadius;
  final List<Shadow> shadows;

  NeuMorphWidget({
    Key key,
    @required this.child,
    this.height,
    this.width,
    this.padding,
    this.color,
    this.borderRadius,
    this.shadows,
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
        boxShadow: shadows ??
            [
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
