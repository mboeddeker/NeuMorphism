import 'package:flutter/material.dart';

class NeuMorphWidget extends StatelessWidget {
  final Widget child;
  final double height, width;

  final Color color;
  final BorderRadius borderRadius;
  final List<Shadow> shadows;

  NeuMorphWidget({
    Key key,
    @required this.child,
    this.height,
    this.width,
    this.color,
    this.borderRadius,
    this.shadows,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius ?? BorderRadius.circular(15.0),
        boxShadow: shadows ??
            [
              BoxShadow(
                color: Color(0xFFFFFFFF).withOpacity(0.5),
                offset: Offset(-5, -5),
                blurRadius: 15,
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0xFFA3B1C6).withOpacity(0.8),
                offset: Offset(5, 5),
                blurRadius: 15,
                spreadRadius: 0,
              ),
            ],
      ),
      child: child,
    );
  }
}
